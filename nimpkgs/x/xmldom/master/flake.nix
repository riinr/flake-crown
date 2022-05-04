{
  description = ''Implementation of XML DOM Level 2 Core specification (http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113/core.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xmldom-master.flake = false;
  inputs.src-xmldom-master.ref   = "refs/heads/master";
  inputs.src-xmldom-master.owner = "nim-lang";
  inputs.src-xmldom-master.repo  = "graveyard";
    inputs.src-xmldom-master.dir   = "xmldom";
inputs.src-xmldom-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xmldom-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xmldom-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}