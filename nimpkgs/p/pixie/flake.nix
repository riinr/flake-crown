{
  description = ''Full-featured 2d graphics library for Nim.'';
  inputs."pixie-master".url = "path:./master";
  inputs."pixie-0_0_10".url = "path:./0_0_10";
  inputs."pixie-0_0_11".url = "path:./0_0_11";
  inputs."pixie-0_0_12".url = "path:./0_0_12";
  inputs."pixie-0_0_13".url = "path:./0_0_13";
  inputs."pixie-0_0_14".url = "path:./0_0_14";
  inputs."pixie-0_0_15".url = "path:./0_0_15";
  inputs."pixie-0_0_16".url = "path:./0_0_16";
  inputs."pixie-0_0_17".url = "path:./0_0_17";
  inputs."pixie-0_0_18".url = "path:./0_0_18";
  inputs."pixie-0_0_2".url = "path:./0_0_2";
  inputs."pixie-0_0_20".url = "path:./0_0_20";
  inputs."pixie-0_0_21".url = "path:./0_0_21";
  inputs."pixie-0_0_3".url = "path:./0_0_3";
  inputs."pixie-0_0_4".url = "path:./0_0_4";
  inputs."pixie-0_0_5".url = "path:./0_0_5";
  inputs."pixie-0_0_6".url = "path:./0_0_6";
  inputs."pixie-0_0_7".url = "path:./0_0_7";
  inputs."pixie-0_0_8".url = "path:./0_0_8";
  inputs."pixie-0_0_9".url = "path:./0_0_9";
  inputs."pixie-1_0_0".url = "path:./1_0_0";
  inputs."pixie-1_0_1".url = "path:./1_0_1";
  inputs."pixie-1_0_2".url = "path:./1_0_2";
  inputs."pixie-1_0_3".url = "path:./1_0_3";
  inputs."pixie-1_0_4".url = "path:./1_0_4";
  inputs."pixie-1_0_5".url = "path:./1_0_5";
  inputs."pixie-1_1_0".url = "path:./1_1_0";
  inputs."pixie-1_1_2".url = "path:./1_1_2";
  inputs."pixie-1_1_3".url = "path:./1_1_3";
  inputs."pixie-1_2_0".url = "path:./1_2_0";
  inputs."pixie-2_0_0".url = "path:./2_0_0";
  inputs."pixie-2_0_1".url = "path:./2_0_1";
  inputs."pixie-2_0_2".url = "path:./2_0_2";
  inputs."pixie-2_0_3".url = "path:./2_0_3";
  inputs."pixie-2_0_4".url = "path:./2_0_4";
  inputs."pixie-2_0_5".url = "path:./2_0_5";
  inputs."pixie-2_1_0".url = "path:./2_1_0";
  inputs."pixie-2_1_1".url = "path:./2_1_1";
  inputs."pixie-3_0_0".url = "path:./3_0_0";
  inputs."pixie-3_0_1".url = "path:./3_0_1";
  inputs."pixie-3_0_2".url = "path:./3_0_2";
  inputs."pixie-3_0_3".url = "path:./3_0_3";
  inputs."pixie-3_0_4".url = "path:./3_0_4";
  inputs."pixie-3_1_0".url = "path:./3_1_0";
  inputs."pixie-3_1_1".url = "path:./3_1_1";
  inputs."pixie-3_1_2".url = "path:./3_1_2";
  inputs."pixie-3_1_3".url = "path:./3_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}