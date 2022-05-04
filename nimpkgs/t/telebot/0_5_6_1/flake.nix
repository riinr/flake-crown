{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_5_6_1.flake = false;
  inputs.src-telebot-0_5_6_1.ref   = "refs/tags/0.5.6.1";
  inputs.src-telebot-0_5_6_1.owner = "ba0f3";
  inputs.src-telebot-0_5_6_1.repo  = "telebot.nim";
  inputs.src-telebot-0_5_6_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_5_6_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_5_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}