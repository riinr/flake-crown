{
  description = ''Async Telegram Bot API Client'';
  inputs."telebot-master".url = "path:./master";
  inputs."telebot-0_1_1".url = "path:./0_1_1";
  inputs."telebot-0_1_2".url = "path:./0_1_2";
  inputs."telebot-0_1_3".url = "path:./0_1_3";
  inputs."telebot-0_1_4".url = "path:./0_1_4";
  inputs."telebot-0_1_5".url = "path:./0_1_5";
  inputs."telebot-0_1_6".url = "path:./0_1_6";
  inputs."telebot-0_1_7".url = "path:./0_1_7";
  inputs."telebot-0_3_0".url = "path:./0_3_0";
  inputs."telebot-0_3_1".url = "path:./0_3_1";
  inputs."telebot-0_3_3".url = "path:./0_3_3";
  inputs."telebot-0_3_4".url = "path:./0_3_4";
  inputs."telebot-0_3_5".url = "path:./0_3_5";
  inputs."telebot-0_3_6".url = "path:./0_3_6";
  inputs."telebot-0_3_7".url = "path:./0_3_7";
  inputs."telebot-0_4_0".url = "path:./0_4_0";
  inputs."telebot-0_4_1".url = "path:./0_4_1";
  inputs."telebot-0_4_2".url = "path:./0_4_2";
  inputs."telebot-0_5_0".url = "path:./0_5_0";
  inputs."telebot-0_5_1".url = "path:./0_5_1";
  inputs."telebot-0_5_2".url = "path:./0_5_2";
  inputs."telebot-0_5_3".url = "path:./0_5_3";
  inputs."telebot-0_5_4".url = "path:./0_5_4";
  inputs."telebot-0_5_5".url = "path:./0_5_5";
  inputs."telebot-0_5_6".url = "path:./0_5_6";
  inputs."telebot-0_5_6_1".url = "path:./0_5_6_1";
  inputs."telebot-0_5_6_2".url = "path:./0_5_6_2";
  inputs."telebot-0_5_6_3".url = "path:./0_5_6_3";
  inputs."telebot-0_5_6_4".url = "path:./0_5_6_4";
  inputs."telebot-0_5_7_1".url = "path:./0_5_7_1";
  inputs."telebot-0_5_7_2".url = "path:./0_5_7_2";
  inputs."telebot-0_5_7_3".url = "path:./0_5_7_3";
  inputs."telebot-0_5_7_4".url = "path:./0_5_7_4";
  inputs."telebot-0_5_8".url = "path:./0_5_8";
  inputs."telebot-0_5_9".url = "path:./0_5_9";
  inputs."telebot-0_6_0".url = "path:./0_6_0";
  inputs."telebot-0_6_1".url = "path:./0_6_1";
  inputs."telebot-0_6_2".url = "path:./0_6_2";
  inputs."telebot-0_6_3".url = "path:./0_6_3";
  inputs."telebot-0_6_4".url = "path:./0_6_4";
  inputs."telebot-0_6_5".url = "path:./0_6_5";
  inputs."telebot-0_6_6".url = "path:./0_6_6";
  inputs."telebot-0_6_7".url = "path:./0_6_7";
  inputs."telebot-0_6_8".url = "path:./0_6_8";
  inputs."telebot-0_6_9".url = "path:./0_6_9";
  inputs."telebot-0_7_0".url = "path:./0_7_0";
  inputs."telebot-0_7_1".url = "path:./0_7_1";
  inputs."telebot-0_7_2".url = "path:./0_7_2";
  inputs."telebot-1_0_0".url = "path:./1_0_0";
  inputs."telebot-1_0_1".url = "path:./1_0_1";
  inputs."telebot-1_0_10".url = "path:./1_0_10";
  inputs."telebot-1_0_11".url = "path:./1_0_11";
  inputs."telebot-1_0_12".url = "path:./1_0_12";
  inputs."telebot-1_0_2".url = "path:./1_0_2";
  inputs."telebot-1_0_3".url = "path:./1_0_3";
  inputs."telebot-1_0_4".url = "path:./1_0_4";
  inputs."telebot-1_0_5".url = "path:./1_0_5";
  inputs."telebot-1_0_6".url = "path:./1_0_6";
  inputs."telebot-1_0_7".url = "path:./1_0_7";
  inputs."telebot-1_0_8".url = "path:./1_0_8";
  inputs."telebot-1_0_9".url = "path:./1_0_9";
  inputs."telebot-2022_01_01".url = "path:./2022_01_01";
  inputs."telebot-2022_01_02".url = "path:./2022_01_02";
  inputs."telebot-2022_01_07".url = "path:./2022_01_07";
  inputs."telebot-2022_02_02".url = "path:./2022_02_02";
  inputs."telebot-signed".url = "path:./signed";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}