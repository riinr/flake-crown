{
  description = ''Game Boy Advance development library'';
  inputs."natu-master".url = "path:./master";
  inputs."natu-0_1_1".url = "path:./0_1_1";
  inputs."natu-0_1_2".url = "path:./0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}