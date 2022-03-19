{
  description = ''wrapper for libclang (the C-interface of the clang LLVM frontend)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libclang-master.flake = false;
  inputs.src-libclang-master.owner = "cowboy-coders";
  inputs.src-libclang-master.ref   = "refs/heads/master";
  inputs.src-libclang-master.repo  = "nim-libclang";
  inputs.src-libclang-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libclang-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libclang-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}