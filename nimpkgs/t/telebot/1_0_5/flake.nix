{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-1_0_5.flake = false;
  inputs.src-telebot-1_0_5.owner = "ba0f3";
  inputs.src-telebot-1_0_5.ref   = "refs/tags/1.0.5";
  inputs.src-telebot-1_0_5.repo  = "telebot.nim";
  inputs.src-telebot-1_0_5.type  = "github";
  
  inputs."sam".owner = "nim-nix-pkgs";
  inputs."sam".ref   = "master";
  inputs."sam".repo  = "sam";
  inputs."sam".type  = "github";
  inputs."sam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-1_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-1_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}