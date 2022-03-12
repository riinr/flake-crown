{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-2022_01_02.flake = false;
  inputs.src-telebot-2022_01_02.owner = "ba0f3";
  inputs.src-telebot-2022_01_02.ref   = "refs/tags/2022.01.02";
  inputs.src-telebot-2022_01_02.repo  = "telebot.nim";
  inputs.src-telebot-2022_01_02.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-2022_01_02"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-2022_01_02";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}