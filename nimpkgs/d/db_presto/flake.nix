{
  description = ''prestodb simple connector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_presto-master".dir   = "master";
  inputs."db_presto-master".owner = "nim-nix-pkgs";
  inputs."db_presto-master".ref   = "master";
  inputs."db_presto-master".repo  = "db_presto";
  inputs."db_presto-master".type  = "github";
  inputs."db_presto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_5_0".dir   = "0_5_0";
  inputs."db_presto-0_5_0".owner = "nim-nix-pkgs";
  inputs."db_presto-0_5_0".ref   = "master";
  inputs."db_presto-0_5_0".repo  = "db_presto";
  inputs."db_presto-0_5_0".type  = "github";
  inputs."db_presto-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_7_0".dir   = "0_7_0";
  inputs."db_presto-0_7_0".owner = "nim-nix-pkgs";
  inputs."db_presto-0_7_0".ref   = "master";
  inputs."db_presto-0_7_0".repo  = "db_presto";
  inputs."db_presto-0_7_0".type  = "github";
  inputs."db_presto-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_8_0".dir   = "0_8_0";
  inputs."db_presto-0_8_0".owner = "nim-nix-pkgs";
  inputs."db_presto-0_8_0".ref   = "master";
  inputs."db_presto-0_8_0".repo  = "db_presto";
  inputs."db_presto-0_8_0".type  = "github";
  inputs."db_presto-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_1".dir   = "0_9_1";
  inputs."db_presto-0_9_1".owner = "nim-nix-pkgs";
  inputs."db_presto-0_9_1".ref   = "master";
  inputs."db_presto-0_9_1".repo  = "db_presto";
  inputs."db_presto-0_9_1".type  = "github";
  inputs."db_presto-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_5".dir   = "0_9_5";
  inputs."db_presto-0_9_5".owner = "nim-nix-pkgs";
  inputs."db_presto-0_9_5".ref   = "master";
  inputs."db_presto-0_9_5".repo  = "db_presto";
  inputs."db_presto-0_9_5".type  = "github";
  inputs."db_presto-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_8".dir   = "0_9_8";
  inputs."db_presto-0_9_8".owner = "nim-nix-pkgs";
  inputs."db_presto-0_9_8".ref   = "master";
  inputs."db_presto-0_9_8".repo  = "db_presto";
  inputs."db_presto-0_9_8".type  = "github";
  inputs."db_presto-0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_9".dir   = "0_9_9";
  inputs."db_presto-0_9_9".owner = "nim-nix-pkgs";
  inputs."db_presto-0_9_9".ref   = "master";
  inputs."db_presto-0_9_9".repo  = "db_presto";
  inputs."db_presto-0_9_9".type  = "github";
  inputs."db_presto-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_91".dir   = "0_9_91";
  inputs."db_presto-0_9_91".owner = "nim-nix-pkgs";
  inputs."db_presto-0_9_91".ref   = "master";
  inputs."db_presto-0_9_91".repo  = "db_presto";
  inputs."db_presto-0_9_91".type  = "github";
  inputs."db_presto-0_9_91".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_91".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_0_1".dir   = "1_0_1";
  inputs."db_presto-1_0_1".owner = "nim-nix-pkgs";
  inputs."db_presto-1_0_1".ref   = "master";
  inputs."db_presto-1_0_1".repo  = "db_presto";
  inputs."db_presto-1_0_1".type  = "github";
  inputs."db_presto-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_0_11".dir   = "1_0_11";
  inputs."db_presto-1_0_11".owner = "nim-nix-pkgs";
  inputs."db_presto-1_0_11".ref   = "master";
  inputs."db_presto-1_0_11".repo  = "db_presto";
  inputs."db_presto-1_0_11".type  = "github";
  inputs."db_presto-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_1_0".dir   = "1_1_0";
  inputs."db_presto-1_1_0".owner = "nim-nix-pkgs";
  inputs."db_presto-1_1_0".ref   = "master";
  inputs."db_presto-1_1_0".repo  = "db_presto";
  inputs."db_presto-1_1_0".type  = "github";
  inputs."db_presto-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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