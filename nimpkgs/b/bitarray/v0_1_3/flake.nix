{
  description = ''mmap-backed bitarray implementation in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitarray-v0_1_3.flake = false;
  inputs.src-bitarray-v0_1_3.owner = "onecodex";
  inputs.src-bitarray-v0_1_3.ref   = "v0_1_3";
  inputs.src-bitarray-v0_1_3.repo  = "nim-bitarray";
  inputs.src-bitarray-v0_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bitarray-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}