{
  description = ''Java bridge for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jnim-v0_5_1.flake = false;
  inputs.src-jnim-v0_5_1.ref   = "refs/tags/v0.5.1";
  inputs.src-jnim-v0_5_1.owner = "yglukhov";
  inputs.src-jnim-v0_5_1.repo  = "jnim";
  inputs.src-jnim-v0_5_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jnim-v0_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jnim-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}