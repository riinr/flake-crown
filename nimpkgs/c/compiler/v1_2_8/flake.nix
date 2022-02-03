{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v1_2_8.flake = false;
  inputs.src-compiler-v1_2_8.type = "github";
  inputs.src-compiler-v1_2_8.owner = "nim-lang";
  inputs.src-compiler-v1_2_8.repo = "Nim";
  inputs.src-compiler-v1_2_8.ref = "refs/tags/v1.2.8";
  
  outputs = { self, nixpkgs, src-compiler-v1_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v1_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v1_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}