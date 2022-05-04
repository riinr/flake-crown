{
  description = ''An experimental deep learning framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."exprgrad-main".dir   = "main";
  inputs."exprgrad-main".owner = "nim-nix-pkgs";
  inputs."exprgrad-main".ref   = "master";
  inputs."exprgrad-main".repo  = "exprgrad";
  inputs."exprgrad-main".type  = "github";
  inputs."exprgrad-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."exprgrad-v0_0_1".dir   = "v0_0_1";
  inputs."exprgrad-v0_0_1".owner = "nim-nix-pkgs";
  inputs."exprgrad-v0_0_1".ref   = "master";
  inputs."exprgrad-v0_0_1".repo  = "exprgrad";
  inputs."exprgrad-v0_0_1".type  = "github";
  inputs."exprgrad-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."exprgrad-v0_0_2".dir   = "v0_0_2";
  inputs."exprgrad-v0_0_2".owner = "nim-nix-pkgs";
  inputs."exprgrad-v0_0_2".ref   = "master";
  inputs."exprgrad-v0_0_2".repo  = "exprgrad";
  inputs."exprgrad-v0_0_2".type  = "github";
  inputs."exprgrad-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}