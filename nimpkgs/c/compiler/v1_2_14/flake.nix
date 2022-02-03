{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v1_2_14.flake = false;
  inputs.src-compiler-v1_2_14.type = "github";
  inputs.src-compiler-v1_2_14.owner = "nim-lang";
  inputs.src-compiler-v1_2_14.repo = "Nim";
  inputs.src-compiler-v1_2_14.ref = "refs/tags/v1.2.14";
  
  outputs = { self, nixpkgs, src-compiler-v1_2_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v1_2_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v1_2_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}