{
  description = ''The Nim framework for VK API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shizuka-master".dir   = "master";
  inputs."shizuka-master".owner = "nim-nix-pkgs";
  inputs."shizuka-master".ref   = "master";
  inputs."shizuka-master".repo  = "shizuka";
  inputs."shizuka-master".type  = "github";
  inputs."shizuka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-nightly-0_3_0".dir   = "nightly-0_3_0";
  inputs."shizuka-nightly-0_3_0".owner = "nim-nix-pkgs";
  inputs."shizuka-nightly-0_3_0".ref   = "master";
  inputs."shizuka-nightly-0_3_0".repo  = "shizuka";
  inputs."shizuka-nightly-0_3_0".type  = "github";
  inputs."shizuka-nightly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-nightly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-stable-1_0_0".dir   = "stable-1_0_0";
  inputs."shizuka-stable-1_0_0".owner = "nim-nix-pkgs";
  inputs."shizuka-stable-1_0_0".ref   = "master";
  inputs."shizuka-stable-1_0_0".repo  = "shizuka";
  inputs."shizuka-stable-1_0_0".type  = "github";
  inputs."shizuka-stable-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-stable-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-v0_2_1".dir   = "v0_2_1";
  inputs."shizuka-v0_2_1".owner = "nim-nix-pkgs";
  inputs."shizuka-v0_2_1".ref   = "master";
  inputs."shizuka-v0_2_1".repo  = "shizuka";
  inputs."shizuka-v0_2_1".type  = "github";
  inputs."shizuka-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-v0_2_2".dir   = "v0_2_2";
  inputs."shizuka-v0_2_2".owner = "nim-nix-pkgs";
  inputs."shizuka-v0_2_2".ref   = "master";
  inputs."shizuka-v0_2_2".repo  = "shizuka";
  inputs."shizuka-v0_2_2".type  = "github";
  inputs."shizuka-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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