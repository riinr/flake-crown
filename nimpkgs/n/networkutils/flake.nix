{
  description = ''Various networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."networkutils-master".dir   = "master";
  inputs."networkutils-master".owner = "nim-nix-pkgs";
  inputs."networkutils-master".ref   = "master";
  inputs."networkutils-master".repo  = "networkutils";
  inputs."networkutils-master".type  = "github";
  inputs."networkutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_1".dir   = "v0_1";
  inputs."networkutils-v0_1".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_1".ref   = "master";
  inputs."networkutils-v0_1".repo  = "networkutils";
  inputs."networkutils-v0_1".type  = "github";
  inputs."networkutils-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_2".dir   = "v0_2";
  inputs."networkutils-v0_2".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_2".ref   = "master";
  inputs."networkutils-v0_2".repo  = "networkutils";
  inputs."networkutils-v0_2".type  = "github";
  inputs."networkutils-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_3".dir   = "v0_3";
  inputs."networkutils-v0_3".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_3".ref   = "master";
  inputs."networkutils-v0_3".repo  = "networkutils";
  inputs."networkutils-v0_3".type  = "github";
  inputs."networkutils-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_4".dir   = "v0_4";
  inputs."networkutils-v0_4".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_4".ref   = "master";
  inputs."networkutils-v0_4".repo  = "networkutils";
  inputs."networkutils-v0_4".type  = "github";
  inputs."networkutils-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_5".dir   = "v0_5";
  inputs."networkutils-v0_5".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_5".ref   = "master";
  inputs."networkutils-v0_5".repo  = "networkutils";
  inputs."networkutils-v0_5".type  = "github";
  inputs."networkutils-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."networkutils-v0_5_1".dir   = "v0_5_1";
  inputs."networkutils-v0_5_1".owner = "nim-nix-pkgs";
  inputs."networkutils-v0_5_1".ref   = "master";
  inputs."networkutils-v0_5_1".repo  = "networkutils";
  inputs."networkutils-v0_5_1".type  = "github";
  inputs."networkutils-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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