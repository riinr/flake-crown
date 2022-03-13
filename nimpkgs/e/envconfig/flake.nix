{
  description = ''envconfig provides a function to get config objects from environment variables.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."envconfig-master".dir   = "master";
  inputs."envconfig-master".owner = "nim-nix-pkgs";
  inputs."envconfig-master".ref   = "master";
  inputs."envconfig-master".repo  = "envconfig";
  inputs."envconfig-master".type  = "github";
  inputs."envconfig-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."envconfig-v1_0_0".dir   = "v1_0_0";
  inputs."envconfig-v1_0_0".owner = "nim-nix-pkgs";
  inputs."envconfig-v1_0_0".ref   = "master";
  inputs."envconfig-v1_0_0".repo  = "envconfig";
  inputs."envconfig-v1_0_0".type  = "github";
  inputs."envconfig-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."envconfig-v1_0_1".dir   = "v1_0_1";
  inputs."envconfig-v1_0_1".owner = "nim-nix-pkgs";
  inputs."envconfig-v1_0_1".ref   = "master";
  inputs."envconfig-v1_0_1".repo  = "envconfig";
  inputs."envconfig-v1_0_1".type  = "github";
  inputs."envconfig-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."envconfig-v1_0_2".dir   = "v1_0_2";
  inputs."envconfig-v1_0_2".owner = "nim-nix-pkgs";
  inputs."envconfig-v1_0_2".ref   = "master";
  inputs."envconfig-v1_0_2".repo  = "envconfig";
  inputs."envconfig-v1_0_2".type  = "github";
  inputs."envconfig-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."envconfig-v1_1_0".dir   = "v1_1_0";
  inputs."envconfig-v1_1_0".owner = "nim-nix-pkgs";
  inputs."envconfig-v1_1_0".ref   = "master";
  inputs."envconfig-v1_1_0".repo  = "envconfig";
  inputs."envconfig-v1_1_0".type  = "github";
  inputs."envconfig-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."envconfig-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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