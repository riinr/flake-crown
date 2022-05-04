{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_3_3.flake = false;
  inputs.src-telebot-0_3_3.ref   = "refs/tags/0.3.3";
  inputs.src-telebot-0_3_3.owner = "ba0f3";
  inputs.src-telebot-0_3_3.repo  = "telebot.nim";
  inputs.src-telebot-0_3_3.type  = "github";
  
  inputs."asyncevents".owner = "nim-nix-pkgs";
  inputs."asyncevents".ref   = "master";
  inputs."asyncevents".repo  = "asyncevents";
  inputs."asyncevents".dir   = "";
  inputs."asyncevents".type  = "github";
  inputs."asyncevents".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncevents".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_3_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_3_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}