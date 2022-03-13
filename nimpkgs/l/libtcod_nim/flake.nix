{
  description = ''Wrapper of the libtcod library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libtcod_nim-master".dir   = "master";
  inputs."libtcod_nim-master".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-master".ref   = "master";
  inputs."libtcod_nim-master".repo  = "libtcod_nim";
  inputs."libtcod_nim-master".type  = "github";
  inputs."libtcod_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_9".dir   = "v0_9";
  inputs."libtcod_nim-v0_9".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_9".ref   = "master";
  inputs."libtcod_nim-v0_9".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_9".type  = "github";
  inputs."libtcod_nim-v0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_95".dir   = "v0_95";
  inputs."libtcod_nim-v0_95".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_95".ref   = "master";
  inputs."libtcod_nim-v0_95".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_95".type  = "github";
  inputs."libtcod_nim-v0_95".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_95".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_96".dir   = "v0_96";
  inputs."libtcod_nim-v0_96".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_96".ref   = "master";
  inputs."libtcod_nim-v0_96".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_96".type  = "github";
  inputs."libtcod_nim-v0_96".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_96".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_97".dir   = "v0_97";
  inputs."libtcod_nim-v0_97".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_97".ref   = "master";
  inputs."libtcod_nim-v0_97".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_97".type  = "github";
  inputs."libtcod_nim-v0_97".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_97".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_98".dir   = "v0_98";
  inputs."libtcod_nim-v0_98".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_98".ref   = "master";
  inputs."libtcod_nim-v0_98".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_98".type  = "github";
  inputs."libtcod_nim-v0_98".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_98".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_98_1".dir   = "v0_98_1";
  inputs."libtcod_nim-v0_98_1".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_98_1".ref   = "master";
  inputs."libtcod_nim-v0_98_1".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_98_1".type  = "github";
  inputs."libtcod_nim-v0_98_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_98_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_99".dir   = "v0_99";
  inputs."libtcod_nim-v0_99".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v0_99".ref   = "master";
  inputs."libtcod_nim-v0_99".repo  = "libtcod_nim";
  inputs."libtcod_nim-v0_99".type  = "github";
  inputs."libtcod_nim-v0_99".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_99".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v1_112_0".dir   = "v1_112_0";
  inputs."libtcod_nim-v1_112_0".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v1_112_0".ref   = "master";
  inputs."libtcod_nim-v1_112_0".repo  = "libtcod_nim";
  inputs."libtcod_nim-v1_112_0".type  = "github";
  inputs."libtcod_nim-v1_112_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v1_112_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v1_112_1".dir   = "v1_112_1";
  inputs."libtcod_nim-v1_112_1".owner = "nim-nix-pkgs";
  inputs."libtcod_nim-v1_112_1".ref   = "master";
  inputs."libtcod_nim-v1_112_1".repo  = "libtcod_nim";
  inputs."libtcod_nim-v1_112_1".type  = "github";
  inputs."libtcod_nim-v1_112_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v1_112_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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