{
  description = ''JSON serialization framework for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eminim-master.flake = false;
  inputs.src-eminim-master.owner = "planetis-m";
  inputs.src-eminim-master.ref   = "master";
  inputs.src-eminim-master.repo  = "eminim";
  inputs.src-eminim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eminim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}