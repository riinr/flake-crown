{
  description = ''Negamax AI algorithm for turn based games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-negamax-v0_0_3.flake = false;
  inputs.src-negamax-v0_0_3.owner = "JohnAD";
  inputs.src-negamax-v0_0_3.ref   = "v0_0_3";
  inputs.src-negamax-v0_0_3.repo  = "negamax";
  inputs.src-negamax-v0_0_3.type  = "github";
  
  inputs."turn_based_game".owner = "nim-nix-pkgs";
  inputs."turn_based_game".ref   = "master";
  inputs."turn_based_game".repo  = "turn_based_game";
  inputs."turn_based_game".dir   = "v1_1_6";
  inputs."turn_based_game".type  = "github";
  inputs."turn_based_game".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-negamax-v0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-negamax-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}