{
  description = ''Pointer arithmetic library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ptr_math-main.flake = false;
  inputs.src-ptr_math-main.ref   = "refs/heads/main";
  inputs.src-ptr_math-main.owner = "kaushalmodi";
  inputs.src-ptr_math-main.repo  = "ptr_math";
  inputs.src-ptr_math-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ptr_math-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ptr_math-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}