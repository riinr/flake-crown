{
  description = ''Modular multithreading Linux HTTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."guildenstern-master".dir   = "master";
  inputs."guildenstern-master".owner = "nim-nix-pkgs";
  inputs."guildenstern-master".ref   = "master";
  inputs."guildenstern-master".repo  = "guildenstern";
  inputs."guildenstern-master".type  = "github";
  inputs."guildenstern-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_7".dir   = "0_7";
  inputs."guildenstern-0_7".owner = "nim-nix-pkgs";
  inputs."guildenstern-0_7".ref   = "master";
  inputs."guildenstern-0_7".repo  = "guildenstern";
  inputs."guildenstern-0_7".type  = "github";
  inputs."guildenstern-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_8".dir   = "0_8";
  inputs."guildenstern-0_8".owner = "nim-nix-pkgs";
  inputs."guildenstern-0_8".ref   = "master";
  inputs."guildenstern-0_8".repo  = "guildenstern";
  inputs."guildenstern-0_8".type  = "github";
  inputs."guildenstern-0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_9".dir   = "0_9";
  inputs."guildenstern-0_9".owner = "nim-nix-pkgs";
  inputs."guildenstern-0_9".ref   = "master";
  inputs."guildenstern-0_9".repo  = "guildenstern";
  inputs."guildenstern-0_9".type  = "github";
  inputs."guildenstern-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-1_0_0".dir   = "1_0_0";
  inputs."guildenstern-1_0_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-1_0_0".ref   = "master";
  inputs."guildenstern-1_0_0".repo  = "guildenstern";
  inputs."guildenstern-1_0_0".type  = "github";
  inputs."guildenstern-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-1_0_1".dir   = "1_0_1";
  inputs."guildenstern-1_0_1".owner = "nim-nix-pkgs";
  inputs."guildenstern-1_0_1".ref   = "master";
  inputs."guildenstern-1_0_1".repo  = "guildenstern";
  inputs."guildenstern-1_0_1".type  = "github";
  inputs."guildenstern-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-2_0_0".dir   = "2_0_0";
  inputs."guildenstern-2_0_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-2_0_0".ref   = "master";
  inputs."guildenstern-2_0_0".repo  = "guildenstern";
  inputs."guildenstern-2_0_0".type  = "github";
  inputs."guildenstern-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-3_0_0".dir   = "3_0_0";
  inputs."guildenstern-3_0_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-3_0_0".ref   = "master";
  inputs."guildenstern-3_0_0".repo  = "guildenstern";
  inputs."guildenstern-3_0_0".type  = "github";
  inputs."guildenstern-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-3_1_0".dir   = "3_1_0";
  inputs."guildenstern-3_1_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-3_1_0".ref   = "master";
  inputs."guildenstern-3_1_0".repo  = "guildenstern";
  inputs."guildenstern-3_1_0".type  = "github";
  inputs."guildenstern-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-4_0_0".dir   = "4_0_0";
  inputs."guildenstern-4_0_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-4_0_0".ref   = "master";
  inputs."guildenstern-4_0_0".repo  = "guildenstern";
  inputs."guildenstern-4_0_0".type  = "github";
  inputs."guildenstern-4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-4_0_0-rc1".dir   = "4_0_0-rc1";
  inputs."guildenstern-4_0_0-rc1".owner = "nim-nix-pkgs";
  inputs."guildenstern-4_0_0-rc1".ref   = "master";
  inputs."guildenstern-4_0_0-rc1".repo  = "guildenstern";
  inputs."guildenstern-4_0_0-rc1".type  = "github";
  inputs."guildenstern-4_0_0-rc1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0-rc1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-5_0_0".dir   = "5_0_0";
  inputs."guildenstern-5_0_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-5_0_0".ref   = "master";
  inputs."guildenstern-5_0_0".repo  = "guildenstern";
  inputs."guildenstern-5_0_0".type  = "github";
  inputs."guildenstern-5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-5_1_0".dir   = "5_1_0";
  inputs."guildenstern-5_1_0".owner = "nim-nix-pkgs";
  inputs."guildenstern-5_1_0".ref   = "master";
  inputs."guildenstern-5_1_0".repo  = "guildenstern";
  inputs."guildenstern-5_1_0".type  = "github";
  inputs."guildenstern-5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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