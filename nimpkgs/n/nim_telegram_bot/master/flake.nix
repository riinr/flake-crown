{
  description = ''Generic Configurable Telegram Bot for Nim, with builtin basic functionality and Plugins'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_telegram_bot-master.flake = false;
  inputs.src-nim_telegram_bot-master.owner = "juancarlospaco";
  inputs.src-nim_telegram_bot-master.ref   = "refs/heads/master";
  inputs.src-nim_telegram_bot-master.repo  = "nim-telegram-bot";
  inputs.src-nim_telegram_bot-master.type  = "github";
  
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
  
  inputs."nimpy".dir   = "nimpkgs/n/nimpy";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".ref   = "flake-pinning";
  inputs."nimpy".repo  = "flake-nimble";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_telegram_bot-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim_telegram_bot-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}