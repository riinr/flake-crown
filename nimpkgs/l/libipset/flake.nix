{
  description = ''libipset wrapper for Nim'';
  inputs."libipset-master".url = "path:./master";
  inputs."libipset-0_0_1".url = "path:./0_0_1";
  inputs."libipset-0_0_2".url = "path:./0_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}