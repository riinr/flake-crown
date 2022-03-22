{
  description = ''An Adaptive Index Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-adix-master.flake = false;
  inputs.src-adix-master.owner = "c-blake";
  inputs.src-adix-master.ref   = "master";
  inputs.src-adix-master.repo  = "adix";
  inputs.src-adix-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-adix-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-adix-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}