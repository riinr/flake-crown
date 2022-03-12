{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_6_9.flake = false;
  inputs.src-telebot-0_6_9.owner = "ba0f3";
  inputs.src-telebot-0_6_9.ref   = "refs/tags/0.6.9";
  inputs.src-telebot-0_6_9.repo  = "telebot.nim";
  inputs.src-telebot-0_6_9.type  = "github";
  
  inputs."sam".dir   = "nimpkgs/s/sam";
  inputs."sam".owner = "riinr";
  inputs."sam".ref   = "flake-pinning";
  inputs."sam".repo  = "flake-nimble";
  inputs."sam".type  = "github";
  inputs."sam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_6_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_6_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}