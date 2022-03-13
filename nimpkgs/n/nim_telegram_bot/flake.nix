{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_telegram_bot-master".dir   = "master";
  inputs."nim_telegram_bot-master".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-master".ref   = "master";
  inputs."nim_telegram_bot-master".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-master".type  = "github";
  inputs."nim_telegram_bot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_0_1".dir   = "0_0_1";
  inputs."nim_telegram_bot-0_0_1".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_0_1".ref   = "master";
  inputs."nim_telegram_bot-0_0_1".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_0_1".type  = "github";
  inputs."nim_telegram_bot-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_0_2".dir   = "0_0_2";
  inputs."nim_telegram_bot-0_0_2".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_0_2".ref   = "master";
  inputs."nim_telegram_bot-0_0_2".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_0_2".type  = "github";
  inputs."nim_telegram_bot-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_0".dir   = "0_2_0";
  inputs."nim_telegram_bot-0_2_0".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_2_0".ref   = "master";
  inputs."nim_telegram_bot-0_2_0".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_2_0".type  = "github";
  inputs."nim_telegram_bot-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_2".dir   = "0_2_2";
  inputs."nim_telegram_bot-0_2_2".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_2_2".ref   = "master";
  inputs."nim_telegram_bot-0_2_2".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_2_2".type  = "github";
  inputs."nim_telegram_bot-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_3".dir   = "0_2_3";
  inputs."nim_telegram_bot-0_2_3".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_2_3".ref   = "master";
  inputs."nim_telegram_bot-0_2_3".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_2_3".type  = "github";
  inputs."nim_telegram_bot-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_2_5".dir   = "0_2_5";
  inputs."nim_telegram_bot-0_2_5".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_2_5".ref   = "master";
  inputs."nim_telegram_bot-0_2_5".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_2_5".type  = "github";
  inputs."nim_telegram_bot-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_3_0".dir   = "0_3_0";
  inputs."nim_telegram_bot-0_3_0".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_3_0".ref   = "master";
  inputs."nim_telegram_bot-0_3_0".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_3_0".type  = "github";
  inputs."nim_telegram_bot-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_4_0".dir   = "0_4_0";
  inputs."nim_telegram_bot-0_4_0".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_4_0".ref   = "master";
  inputs."nim_telegram_bot-0_4_0".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_4_0".type  = "github";
  inputs."nim_telegram_bot-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_telegram_bot-0_4_5".dir   = "0_4_5";
  inputs."nim_telegram_bot-0_4_5".owner = "nim-nix-pkgs";
  inputs."nim_telegram_bot-0_4_5".ref   = "master";
  inputs."nim_telegram_bot-0_4_5".repo  = "nim_telegram_bot";
  inputs."nim_telegram_bot-0_4_5".type  = "github";
  inputs."nim_telegram_bot-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_telegram_bot-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}