{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_3_4.flake = false;
  inputs.src-telebot-0_3_4.type = "github";
  inputs.src-telebot-0_3_4.owner = "ba0f3";
  inputs.src-telebot-0_3_4.repo = "telebot.nim";
  inputs.src-telebot-0_3_4.ref = "refs/tags/0.3.4";
  
  
  inputs."asyncevents".type = "github";
  inputs."asyncevents".owner = "riinr";
  inputs."asyncevents".repo = "flake-nimble";
  inputs."asyncevents".ref = "flake-pinning";
  inputs."asyncevents".dir = "nimpkgs/a/asyncevents";

  outputs = { self, nixpkgs, src-telebot-0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}