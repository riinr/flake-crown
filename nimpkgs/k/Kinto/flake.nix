{
  description = ''Kinto Client for Nim'';
  inputs."Kinto-master".url = "path:./master";
  inputs."Kinto-0_2_0".url = "path:./0_2_0";
  inputs."Kinto-0_2_2".url = "path:./0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}