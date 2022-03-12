{
  description = ''Simple async Gemini server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-geminim-master.flake = false;
  inputs.src-geminim-master.owner = "IDF31";
  inputs.src-geminim-master.ref   = "refs/heads/master";
  inputs.src-geminim-master.repo  = "geminim";
  inputs.src-geminim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-geminim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-geminim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}