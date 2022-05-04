{
  description = ''Generic Configurable Async Telegram Bot for Nim with builtin basic functionality and Plugins.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_telegram_bot-master.flake = false;
  inputs.src-nim_telegram_bot-master.ref   = "refs/heads/master";
  inputs.src-nim_telegram_bot-master.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-master.repo  = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-master.type  = "github";
  
  inputs."openexchangerates".owner = "nim-nix-pkgs";
  inputs."openexchangerates".ref   = "master";
  inputs."openexchangerates".repo  = "openexchangerates";
  inputs."openexchangerates".dir   = "master";
  inputs."openexchangerates".type  = "github";
  inputs."openexchangerates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openexchangerates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot".owner = "nim-nix-pkgs";
  inputs."telebot".ref   = "master";
  inputs."telebot".repo  = "telebot";
  inputs."telebot".dir   = "2022_04_17";
  inputs."telebot".type  = "github";
  inputs."telebot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".dir   = "master";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".owner = "nim-nix-pkgs";
  inputs."zip".ref   = "master";
  inputs."zip".repo  = "zip";
  inputs."zip".dir   = "0_3_1";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_telegram_bot-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nim_telegram_bot-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}