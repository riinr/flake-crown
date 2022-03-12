{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_telegram_bot-0_2_2.flake = false;
  inputs.src-nim_telegram_bot-0_2_2.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-0_2_2.ref   = "refs/tags/0.2.2";
  inputs.src-nim_telegram_bot-0_2_2.repo  = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-0_2_2.type  = "github";
  
  inputs."openexchangerates".dir   = "nimpkgs/o/openexchangerates";
  inputs."openexchangerates".owner = "riinr";
  inputs."openexchangerates".ref   = "flake-pinning";
  inputs."openexchangerates".repo  = "flake-nimble";
  inputs."openexchangerates".type  = "github";
  inputs."openexchangerates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openexchangerates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot".dir   = "nimpkgs/t/telebot";
  inputs."telebot".owner = "riinr";
  inputs."telebot".ref   = "flake-pinning";
  inputs."telebot".repo  = "flake-nimble";
  inputs."telebot".type  = "github";
  inputs."telebot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_telegram_bot-0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim_telegram_bot-0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}