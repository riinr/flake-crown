{
  description = ''Compile time localization for applications'';
  inputs."localize-master".url = "path:./master";
  inputs."localize-0_1".url = "path:./0_1";
  inputs."localize-0_2".url = "path:./0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}