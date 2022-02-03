{
  description = ''A high-level OAI-PMH library.'';
  inputs."oaitools-master".url = "path:./master";
  inputs."oaitools-v0_1_0".url = "path:./v0_1_0";
  inputs."oaitools-v0_2_0".url = "path:./v0_2_0";
  inputs."oaitools-v0_2_1".url = "path:./v0_2_1";
  inputs."oaitools-v0_2_2".url = "path:./v0_2_2";
  inputs."oaitools-v0_2_3".url = "path:./v0_2_3";
  inputs."oaitools-v0_2_4".url = "path:./v0_2_4";
  inputs."oaitools-v0_2_5".url = "path:./v0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}