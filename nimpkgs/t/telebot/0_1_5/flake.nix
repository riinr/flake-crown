{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-telebot-0_1_5.flake = false;
  inputs.src-telebot-0_1_5.owner = "ba0f3";
  inputs.src-telebot-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-telebot-0_1_5.repo  = "telebot.nim";
  inputs.src-telebot-0_1_5.type  = "github";
  
  inputs."tempfile".dir   = "nimpkgs/t/tempfile";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".ref   = "flake-pinning";
  inputs."tempfile".repo  = "flake-nimble";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-telebot-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-telebot-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}