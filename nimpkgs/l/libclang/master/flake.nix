{
  description = ''wrapper for libclang (the C-interface of the clang LLVM frontend)'';
  inputs.src-libclang-master.flake = false;
  inputs.src-libclang-master.type = "github";
  inputs.src-libclang-master.owner = "cowboy-coders";
  inputs.src-libclang-master.repo = "nim-libclang";
  inputs.src-libclang-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-libclang-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libclang-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libclang-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}