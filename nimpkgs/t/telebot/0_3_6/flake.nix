{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_3_6.flake = false;
  inputs.src-telebot-0_3_6.type = "github";
  inputs.src-telebot-0_3_6.owner = "ba0f3";
  inputs.src-telebot-0_3_6.repo = "telebot.nim";
  inputs.src-telebot-0_3_6.ref = "refs/tags/0.3.6";
  
  
  inputs."asyncevents".url = "path:../../../a/asyncevents";
  inputs."asyncevents".type = "github";
  inputs."asyncevents".owner = "riinr";
  inputs."asyncevents".repo = "flake-nimble";
  inputs."asyncevents".ref = "flake-pinning";
  inputs."asyncevents".dir = "nimpkgs/a/asyncevents";

  outputs = { self, nixpkgs, src-telebot-0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}