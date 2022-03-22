{
  description = ''Pleasant Nim bindings for SIMD instruction sets.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsimd-0_4_6.flake = false;
  inputs.src-nimsimd-0_4_6.owner = "guzba";
  inputs.src-nimsimd-0_4_6.ref   = "0_4_6";
  inputs.src-nimsimd-0_4_6.repo  = "nimsimd";
  inputs.src-nimsimd-0_4_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsimd-0_4_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsimd-0_4_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}