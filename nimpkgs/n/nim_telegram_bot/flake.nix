{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_telegram_bot-master".url = "path:./master";
  inputs."nim_telegram_bot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_0_1".url = "path:./0_0_1";
  inputs."nim_telegram_bot-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_0_2".url = "path:./0_0_2";
  inputs."nim_telegram_bot-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_0".url = "path:./0_2_0";
  inputs."nim_telegram_bot-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_2".url = "path:./0_2_2";
  inputs."nim_telegram_bot-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_3".url = "path:./0_2_3";
  inputs."nim_telegram_bot-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_5".url = "path:./0_2_5";
  inputs."nim_telegram_bot-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_3_0".url = "path:./0_3_0";
  inputs."nim_telegram_bot-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_4_0".url = "path:./0_4_0";
  inputs."nim_telegram_bot-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_4_5".url = "path:./0_4_5";
  inputs."nim_telegram_bot-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}