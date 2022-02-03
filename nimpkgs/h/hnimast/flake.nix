{
  description = ''User-friendly wrapper for nim ast'';
  inputs."hnimast-master".url = "path:./master";
  inputs."hnimast-v0_3_0".url = "path:./v0_3_0";
  inputs."hnimast-v0_3_1".url = "path:./v0_3_1";
  inputs."hnimast-v0_3_10".url = "path:./v0_3_10";
  inputs."hnimast-v0_3_11".url = "path:./v0_3_11";
  inputs."hnimast-v0_3_12".url = "path:./v0_3_12";
  inputs."hnimast-v0_3_13".url = "path:./v0_3_13";
  inputs."hnimast-v0_3_14".url = "path:./v0_3_14";
  inputs."hnimast-v0_3_15".url = "path:./v0_3_15";
  inputs."hnimast-v0_3_16".url = "path:./v0_3_16";
  inputs."hnimast-v0_3_17".url = "path:./v0_3_17";
  inputs."hnimast-v0_3_18".url = "path:./v0_3_18";
  inputs."hnimast-v0_3_19".url = "path:./v0_3_19";
  inputs."hnimast-v0_3_2".url = "path:./v0_3_2";
  inputs."hnimast-v0_3_20".url = "path:./v0_3_20";
  inputs."hnimast-v0_3_21".url = "path:./v0_3_21";
  inputs."hnimast-v0_3_22".url = "path:./v0_3_22";
  inputs."hnimast-v0_3_23".url = "path:./v0_3_23";
  inputs."hnimast-v0_3_24".url = "path:./v0_3_24";
  inputs."hnimast-v0_3_25".url = "path:./v0_3_25";
  inputs."hnimast-v0_3_26".url = "path:./v0_3_26";
  inputs."hnimast-v0_3_27".url = "path:./v0_3_27";
  inputs."hnimast-v0_3_28".url = "path:./v0_3_28";
  inputs."hnimast-v0_3_29".url = "path:./v0_3_29";
  inputs."hnimast-v0_3_3".url = "path:./v0_3_3";
  inputs."hnimast-v0_3_30".url = "path:./v0_3_30";
  inputs."hnimast-v0_3_31".url = "path:./v0_3_31";
  inputs."hnimast-v0_3_32".url = "path:./v0_3_32";
  inputs."hnimast-v0_3_33".url = "path:./v0_3_33";
  inputs."hnimast-v0_3_34".url = "path:./v0_3_34";
  inputs."hnimast-v0_3_35".url = "path:./v0_3_35";
  inputs."hnimast-v0_3_36".url = "path:./v0_3_36";
  inputs."hnimast-v0_3_37".url = "path:./v0_3_37";
  inputs."hnimast-v0_3_38".url = "path:./v0_3_38";
  inputs."hnimast-v0_3_4".url = "path:./v0_3_4";
  inputs."hnimast-v0_3_5".url = "path:./v0_3_5";
  inputs."hnimast-v0_3_6".url = "path:./v0_3_6";
  inputs."hnimast-v0_3_7".url = "path:./v0_3_7";
  inputs."hnimast-v0_3_8".url = "path:./v0_3_8";
  inputs."hnimast-v0_3_9".url = "path:./v0_3_9";
  inputs."hnimast-v0_4_0".url = "path:./v0_4_0";
  inputs."hnimast-v0_4_2".url = "path:./v0_4_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}