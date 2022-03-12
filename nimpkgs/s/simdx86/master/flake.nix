{
  description = ''Wrappers for X86 SIMD intrinsics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simdX86-master.flake = false;
  inputs.src-simdX86-master.owner = "nimlibs";
  inputs.src-simdX86-master.ref   = "refs/heads/master";
  inputs.src-simdX86-master.repo  = "simdX86";
  inputs.src-simdX86-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simdX86-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simdX86-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}