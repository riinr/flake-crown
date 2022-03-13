{
  description = ''A simple GUI front for Nimble.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimblegui-master".dir   = "master";
  inputs."nimblegui-master".owner = "nim-nix-pkgs";
  inputs."nimblegui-master".ref   = "master";
  inputs."nimblegui-master".repo  = "nimblegui";
  inputs."nimblegui-master".type  = "github";
  inputs."nimblegui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_1_2".dir   = "v0_1_2";
  inputs."nimblegui-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimblegui-v0_1_2".ref   = "master";
  inputs."nimblegui-v0_1_2".repo  = "nimblegui";
  inputs."nimblegui-v0_1_2".type  = "github";
  inputs."nimblegui-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_0".dir   = "v0_2_0";
  inputs."nimblegui-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimblegui-v0_2_0".ref   = "master";
  inputs."nimblegui-v0_2_0".repo  = "nimblegui";
  inputs."nimblegui-v0_2_0".type  = "github";
  inputs."nimblegui-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_1".dir   = "v0_2_1";
  inputs."nimblegui-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimblegui-v0_2_1".ref   = "master";
  inputs."nimblegui-v0_2_1".repo  = "nimblegui";
  inputs."nimblegui-v0_2_1".type  = "github";
  inputs."nimblegui-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_2".dir   = "v0_2_2";
  inputs."nimblegui-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nimblegui-v0_2_2".ref   = "master";
  inputs."nimblegui-v0_2_2".repo  = "nimblegui";
  inputs."nimblegui-v0_2_2".type  = "github";
  inputs."nimblegui-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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