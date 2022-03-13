{
  description = ''Fully type safe, compile time only units library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unchained-master".dir   = "master";
  inputs."unchained-master".owner = "nim-nix-pkgs";
  inputs."unchained-master".ref   = "master";
  inputs."unchained-master".repo  = "unchained";
  inputs."unchained-master".type  = "github";
  inputs."unchained-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_0".dir   = "v0_1_0";
  inputs."unchained-v0_1_0".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_0".ref   = "master";
  inputs."unchained-v0_1_0".repo  = "unchained";
  inputs."unchained-v0_1_0".type  = "github";
  inputs."unchained-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_1".dir   = "v0_1_1";
  inputs."unchained-v0_1_1".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_1".ref   = "master";
  inputs."unchained-v0_1_1".repo  = "unchained";
  inputs."unchained-v0_1_1".type  = "github";
  inputs."unchained-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_3".dir   = "v0_1_3";
  inputs."unchained-v0_1_3".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_3".ref   = "master";
  inputs."unchained-v0_1_3".repo  = "unchained";
  inputs."unchained-v0_1_3".type  = "github";
  inputs."unchained-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_4".dir   = "v0_1_4";
  inputs."unchained-v0_1_4".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_4".ref   = "master";
  inputs."unchained-v0_1_4".repo  = "unchained";
  inputs."unchained-v0_1_4".type  = "github";
  inputs."unchained-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_5".dir   = "v0_1_5";
  inputs."unchained-v0_1_5".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_5".ref   = "master";
  inputs."unchained-v0_1_5".repo  = "unchained";
  inputs."unchained-v0_1_5".type  = "github";
  inputs."unchained-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_6".dir   = "v0_1_6";
  inputs."unchained-v0_1_6".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_6".ref   = "master";
  inputs."unchained-v0_1_6".repo  = "unchained";
  inputs."unchained-v0_1_6".type  = "github";
  inputs."unchained-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_7".dir   = "v0_1_7";
  inputs."unchained-v0_1_7".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_7".ref   = "master";
  inputs."unchained-v0_1_7".repo  = "unchained";
  inputs."unchained-v0_1_7".type  = "github";
  inputs."unchained-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_8".dir   = "v0_1_8";
  inputs."unchained-v0_1_8".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_8".ref   = "master";
  inputs."unchained-v0_1_8".repo  = "unchained";
  inputs."unchained-v0_1_8".type  = "github";
  inputs."unchained-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_9".dir   = "v0_1_9";
  inputs."unchained-v0_1_9".owner = "nim-nix-pkgs";
  inputs."unchained-v0_1_9".ref   = "master";
  inputs."unchained-v0_1_9".repo  = "unchained";
  inputs."unchained-v0_1_9".type  = "github";
  inputs."unchained-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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