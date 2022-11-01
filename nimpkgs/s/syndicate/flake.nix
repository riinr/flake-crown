{
  description = ''Syndicated actors for conversational concurrency'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syndicate-devel".dir   = "devel";
  inputs."syndicate-devel".owner = "nim-nix-pkgs";
  inputs."syndicate-devel".ref   = "master";
  inputs."syndicate-devel".repo  = "syndicate";
  inputs."syndicate-devel".type  = "github";
  inputs."syndicate-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-trunk".dir   = "trunk";
  inputs."syndicate-trunk".owner = "nim-nix-pkgs";
  inputs."syndicate-trunk".ref   = "master";
  inputs."syndicate-trunk".repo  = "syndicate";
  inputs."syndicate-trunk".type  = "github";
  inputs."syndicate-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-1_0_0".dir   = "1_0_0";
  inputs."syndicate-1_0_0".owner = "nim-nix-pkgs";
  inputs."syndicate-1_0_0".ref   = "master";
  inputs."syndicate-1_0_0".repo  = "syndicate";
  inputs."syndicate-1_0_0".type  = "github";
  inputs."syndicate-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-1_1_0".dir   = "1_1_0";
  inputs."syndicate-1_1_0".owner = "nim-nix-pkgs";
  inputs."syndicate-1_1_0".ref   = "master";
  inputs."syndicate-1_1_0".repo  = "syndicate";
  inputs."syndicate-1_1_0".type  = "github";
  inputs."syndicate-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-1_3_0".dir   = "1_3_0";
  inputs."syndicate-1_3_0".owner = "nim-nix-pkgs";
  inputs."syndicate-1_3_0".ref   = "master";
  inputs."syndicate-1_3_0".repo  = "syndicate";
  inputs."syndicate-1_3_0".type  = "github";
  inputs."syndicate-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-1_3_1".dir   = "1_3_1";
  inputs."syndicate-1_3_1".owner = "nim-nix-pkgs";
  inputs."syndicate-1_3_1".ref   = "master";
  inputs."syndicate-1_3_1".repo  = "syndicate";
  inputs."syndicate-1_3_1".type  = "github";
  inputs."syndicate-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-20220627".dir   = "20220627";
  inputs."syndicate-20220627".owner = "nim-nix-pkgs";
  inputs."syndicate-20220627".ref   = "master";
  inputs."syndicate-20220627".repo  = "syndicate";
  inputs."syndicate-20220627".type  = "github";
  inputs."syndicate-20220627".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-20220627".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-20220829".dir   = "20220829";
  inputs."syndicate-20220829".owner = "nim-nix-pkgs";
  inputs."syndicate-20220829".ref   = "master";
  inputs."syndicate-20220829".repo  = "syndicate";
  inputs."syndicate-20220829".type  = "github";
  inputs."syndicate-20220829".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-20220829".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-20220830".dir   = "20220830";
  inputs."syndicate-20220830".owner = "nim-nix-pkgs";
  inputs."syndicate-20220830".ref   = "master";
  inputs."syndicate-20220830".repo  = "syndicate";
  inputs."syndicate-20220830".type  = "github";
  inputs."syndicate-20220830".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-20220830".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-20220904".dir   = "20220904";
  inputs."syndicate-20220904".owner = "nim-nix-pkgs";
  inputs."syndicate-20220904".ref   = "master";
  inputs."syndicate-20220904".repo  = "syndicate";
  inputs."syndicate-20220904".type  = "github";
  inputs."syndicate-20220904".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-20220904".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-202210231".dir   = "202210231";
  inputs."syndicate-202210231".owner = "nim-nix-pkgs";
  inputs."syndicate-202210231".ref   = "master";
  inputs."syndicate-202210231".repo  = "syndicate";
  inputs."syndicate-202210231".type  = "github";
  inputs."syndicate-202210231".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-202210231".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-nim-syndicate-1_2_0".dir   = "nim-syndicate-1_2_0";
  inputs."syndicate-nim-syndicate-1_2_0".owner = "nim-nix-pkgs";
  inputs."syndicate-nim-syndicate-1_2_0".ref   = "master";
  inputs."syndicate-nim-syndicate-1_2_0".repo  = "syndicate";
  inputs."syndicate-nim-syndicate-1_2_0".type  = "github";
  inputs."syndicate-nim-syndicate-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-nim-syndicate-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-nim-syndicate-1_3_0".dir   = "nim-syndicate-1_3_0";
  inputs."syndicate-nim-syndicate-1_3_0".owner = "nim-nix-pkgs";
  inputs."syndicate-nim-syndicate-1_3_0".ref   = "master";
  inputs."syndicate-nim-syndicate-1_3_0".repo  = "syndicate";
  inputs."syndicate-nim-syndicate-1_3_0".type  = "github";
  inputs."syndicate-nim-syndicate-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-nim-syndicate-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-nim-syndicate-1_3_1".dir   = "nim-syndicate-1_3_1";
  inputs."syndicate-nim-syndicate-1_3_1".owner = "nim-nix-pkgs";
  inputs."syndicate-nim-syndicate-1_3_1".ref   = "master";
  inputs."syndicate-nim-syndicate-1_3_1".repo  = "syndicate";
  inputs."syndicate-nim-syndicate-1_3_1".type  = "github";
  inputs."syndicate-nim-syndicate-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-nim-syndicate-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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