{
  description = ''A Grid (R) like package in Nim'';
  inputs."ginger-master".url = "path:./master";
  inputs."ginger-v0_1_1".url = "path:./v0_1_1";
  inputs."ginger-v0_1_10".url = "path:./v0_1_10";
  inputs."ginger-v0_1_11".url = "path:./v0_1_11";
  inputs."ginger-v0_1_12".url = "path:./v0_1_12";
  inputs."ginger-v0_1_13".url = "path:./v0_1_13";
  inputs."ginger-v0_1_14".url = "path:./v0_1_14";
  inputs."ginger-v0_1_15".url = "path:./v0_1_15";
  inputs."ginger-v0_1_16".url = "path:./v0_1_16";
  inputs."ginger-v0_1_17".url = "path:./v0_1_17";
  inputs."ginger-v0_1_2".url = "path:./v0_1_2";
  inputs."ginger-v0_1_3".url = "path:./v0_1_3";
  inputs."ginger-v0_1_4".url = "path:./v0_1_4";
  inputs."ginger-v0_1_5".url = "path:./v0_1_5";
  inputs."ginger-v0_1_6".url = "path:./v0_1_6";
  inputs."ginger-v0_1_7".url = "path:./v0_1_7";
  inputs."ginger-v0_1_8".url = "path:./v0_1_8";
  inputs."ginger-v0_1_9".url = "path:./v0_1_9";
  inputs."ginger-v0_2_0".url = "path:./v0_2_0";
  inputs."ginger-v0_2_1".url = "path:./v0_2_1";
  inputs."ginger-v0_2_10".url = "path:./v0_2_10";
  inputs."ginger-v0_2_11".url = "path:./v0_2_11";
  inputs."ginger-v0_2_12".url = "path:./v0_2_12";
  inputs."ginger-v0_2_2".url = "path:./v0_2_2";
  inputs."ginger-v0_2_3".url = "path:./v0_2_3";
  inputs."ginger-v0_2_4".url = "path:./v0_2_4";
  inputs."ginger-v0_2_5".url = "path:./v0_2_5";
  inputs."ginger-v0_2_6".url = "path:./v0_2_6";
  inputs."ginger-v0_2_7".url = "path:./v0_2_7";
  inputs."ginger-v0_2_8".url = "path:./v0_2_8";
  inputs."ginger-v0_3_0".url = "path:./v0_3_0";
  inputs."ginger-v0_3_1".url = "path:./v0_3_1";
  inputs."ginger-v0_3_10".url = "path:./v0_3_10";
  inputs."ginger-v0_3_2".url = "path:./v0_3_2";
  inputs."ginger-v0_3_3".url = "path:./v0_3_3";
  inputs."ginger-v0_3_4".url = "path:./v0_3_4";
  inputs."ginger-v0_3_5".url = "path:./v0_3_5";
  inputs."ginger-v0_3_6".url = "path:./v0_3_6";
  inputs."ginger-v0_3_7".url = "path:./v0_3_7";
  inputs."ginger-v0_3_8".url = "path:./v0_3_8";
  inputs."ginger-v0_3_9".url = "path:./v0_3_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}