{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_6_3.flake = false;
  inputs.src-telebot-0_6_3.owner = "ba0f3";
  inputs.src-telebot-0_6_3.ref   = "refs/tags/0.6.3";
  inputs.src-telebot-0_6_3.repo  = "telebot.nim";
  inputs.src-telebot-0_6_3.type  = "github";
  
  inputs."sam".owner = "nim-nix-pkgs";
  inputs."sam".ref   = "master";
  inputs."sam".repo  = "sam";
  inputs."sam".type  = "github";
  inputs."sam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_6_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_6_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}