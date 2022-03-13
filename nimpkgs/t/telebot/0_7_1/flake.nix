{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_7_1.flake = false;
  inputs.src-telebot-0_7_1.owner = "ba0f3";
  inputs.src-telebot-0_7_1.ref   = "refs/tags/0.7.1";
  inputs.src-telebot-0_7_1.repo  = "telebot.nim";
  inputs.src-telebot-0_7_1.type  = "github";
  
  inputs."sam".owner = "nim-nix-pkgs";
  inputs."sam".ref   = "master";
  inputs."sam".repo  = "sam";
  inputs."sam".type  = "github";
  inputs."sam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_7_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}