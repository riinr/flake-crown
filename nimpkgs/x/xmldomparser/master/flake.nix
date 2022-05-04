{
  description = ''Parses an XML Document into a XML DOM Document representation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xmldomparser-master.flake = false;
  inputs.src-xmldomparser-master.ref   = "refs/heads/master";
  inputs.src-xmldomparser-master.owner = "nim-lang";
  inputs.src-xmldomparser-master.repo  = "graveyard";
    inputs.src-xmldomparser-master.dir   = "xmldomparser";
inputs.src-xmldomparser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xmldomparser-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xmldomparser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}