{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs.src-turn_based_game-v1_1_0.flake = false;
  inputs.src-turn_based_game-v1_1_0.type = "github";
  inputs.src-turn_based_game-v1_1_0.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_0.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-turn_based_game-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-turn_based_game-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}