{
  description = ''Pointer arithmetic library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ptr_math-v0_3_0.flake = false;
  inputs.src-ptr_math-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-ptr_math-v0_3_0.owner = "kaushalmodi";
  inputs.src-ptr_math-v0_3_0.repo  = "ptr_math";
  inputs.src-ptr_math-v0_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ptr_math-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ptr_math-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}