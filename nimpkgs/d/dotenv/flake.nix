{
  description = ''Loads environment variables from `.env`.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dotenv-main".dir   = "main";
  inputs."dotenv-main".owner = "nim-nix-pkgs";
  inputs."dotenv-main".ref   = "master";
  inputs."dotenv-main".repo  = "dotenv";
  inputs."dotenv-main".type  = "github";
  inputs."dotenv-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-2_0_0".dir   = "2_0_0";
  inputs."dotenv-2_0_0".owner = "nim-nix-pkgs";
  inputs."dotenv-2_0_0".ref   = "master";
  inputs."dotenv-2_0_0".repo  = "dotenv";
  inputs."dotenv-2_0_0".type  = "github";
  inputs."dotenv-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-2_0_1".dir   = "2_0_1";
  inputs."dotenv-2_0_1".owner = "nim-nix-pkgs";
  inputs."dotenv-2_0_1".ref   = "master";
  inputs."dotenv-2_0_1".repo  = "dotenv";
  inputs."dotenv-2_0_1".type  = "github";
  inputs."dotenv-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_0".dir   = "v1_0_0";
  inputs."dotenv-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dotenv-v1_0_0".ref   = "master";
  inputs."dotenv-v1_0_0".repo  = "dotenv";
  inputs."dotenv-v1_0_0".type  = "github";
  inputs."dotenv-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_3".dir   = "v1_0_3";
  inputs."dotenv-v1_0_3".owner = "nim-nix-pkgs";
  inputs."dotenv-v1_0_3".ref   = "master";
  inputs."dotenv-v1_0_3".repo  = "dotenv";
  inputs."dotenv-v1_0_3".type  = "github";
  inputs."dotenv-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_4".dir   = "v1_0_4";
  inputs."dotenv-v1_0_4".owner = "nim-nix-pkgs";
  inputs."dotenv-v1_0_4".ref   = "master";
  inputs."dotenv-v1_0_4".repo  = "dotenv";
  inputs."dotenv-v1_0_4".type  = "github";
  inputs."dotenv-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_1_0".dir   = "v1_1_0";
  inputs."dotenv-v1_1_0".owner = "nim-nix-pkgs";
  inputs."dotenv-v1_1_0".ref   = "master";
  inputs."dotenv-v1_1_0".repo  = "dotenv";
  inputs."dotenv-v1_1_0".type  = "github";
  inputs."dotenv-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_1_1".dir   = "v1_1_1";
  inputs."dotenv-v1_1_1".owner = "nim-nix-pkgs";
  inputs."dotenv-v1_1_1".ref   = "master";
  inputs."dotenv-v1_1_1".repo  = "dotenv";
  inputs."dotenv-v1_1_1".type  = "github";
  inputs."dotenv-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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