{
  description = ''Async Telegram Bot API Client'';
  inputs.src-telebot-0_3_0.flake = false;
  inputs.src-telebot-0_3_0.type = "github";
  inputs.src-telebot-0_3_0.owner = "ba0f3";
  inputs.src-telebot-0_3_0.repo = "telebot.nim";
  inputs.src-telebot-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-telebot-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telebot-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-telebot-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}