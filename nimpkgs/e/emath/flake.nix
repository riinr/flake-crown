{
  description = ''math parser/evaluator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."emath-main".dir   = "main";
  inputs."emath-main".owner = "nim-nix-pkgs";
  inputs."emath-main".ref   = "master";
  inputs."emath-main".repo  = "emath";
  inputs."emath-main".type  = "github";
  inputs."emath-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emath-0_0_10".dir   = "0_0_10";
  inputs."emath-0_0_10".owner = "nim-nix-pkgs";
  inputs."emath-0_0_10".ref   = "master";
  inputs."emath-0_0_10".repo  = "emath";
  inputs."emath-0_0_10".type  = "github";
  inputs."emath-0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emath-0_0_6".dir   = "0_0_6";
  inputs."emath-0_0_6".owner = "nim-nix-pkgs";
  inputs."emath-0_0_6".ref   = "master";
  inputs."emath-0_0_6".repo  = "emath";
  inputs."emath-0_0_6".type  = "github";
  inputs."emath-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emath-0_0_8".dir   = "0_0_8";
  inputs."emath-0_0_8".owner = "nim-nix-pkgs";
  inputs."emath-0_0_8".ref   = "master";
  inputs."emath-0_0_8".repo  = "emath";
  inputs."emath-0_0_8".type  = "github";
  inputs."emath-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emath-0_1_0".dir   = "0_1_0";
  inputs."emath-0_1_0".owner = "nim-nix-pkgs";
  inputs."emath-0_1_0".ref   = "master";
  inputs."emath-0_1_0".repo  = "emath";
  inputs."emath-0_1_0".type  = "github";
  inputs."emath-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emath-0_1_1".dir   = "0_1_1";
  inputs."emath-0_1_1".owner = "nim-nix-pkgs";
  inputs."emath-0_1_1".ref   = "master";
  inputs."emath-0_1_1".repo  = "emath";
  inputs."emath-0_1_1".type  = "github";
  inputs."emath-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emath-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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