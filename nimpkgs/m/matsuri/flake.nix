{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matsuri-devel".dir   = "devel";
  inputs."matsuri-devel".owner = "nim-nix-pkgs";
  inputs."matsuri-devel".ref   = "master";
  inputs."matsuri-devel".repo  = "matsuri";
  inputs."matsuri-devel".type  = "github";
  inputs."matsuri-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-master".dir   = "master";
  inputs."matsuri-master".owner = "nim-nix-pkgs";
  inputs."matsuri-master".ref   = "master";
  inputs."matsuri-master".repo  = "matsuri";
  inputs."matsuri-master".type  = "github";
  inputs."matsuri-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_1_0".dir   = "v0_1_0";
  inputs."matsuri-v0_1_0".owner = "nim-nix-pkgs";
  inputs."matsuri-v0_1_0".ref   = "master";
  inputs."matsuri-v0_1_0".repo  = "matsuri";
  inputs."matsuri-v0_1_0".type  = "github";
  inputs."matsuri-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_2_0".dir   = "v0_2_0";
  inputs."matsuri-v0_2_0".owner = "nim-nix-pkgs";
  inputs."matsuri-v0_2_0".ref   = "master";
  inputs."matsuri-v0_2_0".repo  = "matsuri";
  inputs."matsuri-v0_2_0".type  = "github";
  inputs."matsuri-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_3_0".dir   = "v0_3_0";
  inputs."matsuri-v0_3_0".owner = "nim-nix-pkgs";
  inputs."matsuri-v0_3_0".ref   = "master";
  inputs."matsuri-v0_3_0".repo  = "matsuri";
  inputs."matsuri-v0_3_0".type  = "github";
  inputs."matsuri-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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