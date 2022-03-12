{
  description = ''A simple library to generate random data, using the system's PRNG.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sysrandom-v1_0_0.flake = false;
  inputs.src-sysrandom-v1_0_0.owner = "euantorano";
  inputs.src-sysrandom-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-sysrandom-v1_0_0.repo  = "sysrandom.nim";
  inputs.src-sysrandom-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sysrandom-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sysrandom-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}