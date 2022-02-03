{
  description = ''Syllable estimation for Nim.'';
  inputs."syllables-main".url = "path:./main";
  inputs."syllables-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}