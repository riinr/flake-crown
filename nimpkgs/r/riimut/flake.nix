{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."riimut-main".dir   = "main";
  inputs."riimut-main".owner = "nim-nix-pkgs";
  inputs."riimut-main".ref   = "master";
  inputs."riimut-main".repo  = "riimut";
  inputs."riimut-main".type  = "github";
  inputs."riimut-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."riimut-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."riimut-v1_0_0".dir   = "v1_0_0";
  inputs."riimut-v1_0_0".owner = "nim-nix-pkgs";
  inputs."riimut-v1_0_0".ref   = "master";
  inputs."riimut-v1_0_0".repo  = "riimut";
  inputs."riimut-v1_0_0".type  = "github";
  inputs."riimut-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."riimut-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."riimut-v1_1_0".dir   = "v1_1_0";
  inputs."riimut-v1_1_0".owner = "nim-nix-pkgs";
  inputs."riimut-v1_1_0".ref   = "master";
  inputs."riimut-v1_1_0".repo  = "riimut";
  inputs."riimut-v1_1_0".type  = "github";
  inputs."riimut-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."riimut-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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