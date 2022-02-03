{
  description = ''Compiler package providing the compiler sources as a library.'';
  inputs.src-compiler-v0_9_4.flake = false;
  inputs.src-compiler-v0_9_4.type = "github";
  inputs.src-compiler-v0_9_4.owner = "nim-lang";
  inputs.src-compiler-v0_9_4.repo = "Nim";
  inputs.src-compiler-v0_9_4.ref = "refs/tags/v0.9.4";
  
  outputs = { self, nixpkgs, src-compiler-v0_9_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compiler-v0_9_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compiler-v0_9_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}