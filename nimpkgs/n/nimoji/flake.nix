{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimoji-master".dir   = "master";
  inputs."nimoji-master".owner = "nim-nix-pkgs";
  inputs."nimoji-master".ref   = "master";
  inputs."nimoji-master".repo  = "nimoji";
  inputs."nimoji-master".type  = "github";
  inputs."nimoji-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_0".dir   = "v0_1_0";
  inputs."nimoji-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimoji-v0_1_0".ref   = "master";
  inputs."nimoji-v0_1_0".repo  = "nimoji";
  inputs."nimoji-v0_1_0".type  = "github";
  inputs."nimoji-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_1".dir   = "v0_1_1";
  inputs."nimoji-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimoji-v0_1_1".ref   = "master";
  inputs."nimoji-v0_1_1".repo  = "nimoji";
  inputs."nimoji-v0_1_1".type  = "github";
  inputs."nimoji-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_2".dir   = "v0_1_2";
  inputs."nimoji-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimoji-v0_1_2".ref   = "master";
  inputs."nimoji-v0_1_2".repo  = "nimoji";
  inputs."nimoji-v0_1_2".type  = "github";
  inputs."nimoji-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_3".dir   = "v0_1_3";
  inputs."nimoji-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimoji-v0_1_3".ref   = "master";
  inputs."nimoji-v0_1_3".repo  = "nimoji";
  inputs."nimoji-v0_1_3".type  = "github";
  inputs."nimoji-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_4".dir   = "v0_1_4";
  inputs."nimoji-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimoji-v0_1_4".ref   = "master";
  inputs."nimoji-v0_1_4".repo  = "nimoji";
  inputs."nimoji-v0_1_4".type  = "github";
  inputs."nimoji-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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