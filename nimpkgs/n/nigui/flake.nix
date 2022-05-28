{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nigui-master".dir   = "master";
  inputs."nigui-master".owner = "nim-nix-pkgs";
  inputs."nigui-master".ref   = "master";
  inputs."nigui-master".repo  = "nigui";
  inputs."nigui-master".type  = "github";
  inputs."nigui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_0".dir   = "v0_2_0";
  inputs."nigui-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_0".ref   = "master";
  inputs."nigui-v0_2_0".repo  = "nigui";
  inputs."nigui-v0_2_0".type  = "github";
  inputs."nigui-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_1".dir   = "v0_2_1";
  inputs."nigui-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_1".ref   = "master";
  inputs."nigui-v0_2_1".repo  = "nigui";
  inputs."nigui-v0_2_1".type  = "github";
  inputs."nigui-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_2".dir   = "v0_2_2";
  inputs."nigui-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_2".ref   = "master";
  inputs."nigui-v0_2_2".repo  = "nigui";
  inputs."nigui-v0_2_2".type  = "github";
  inputs."nigui-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_3".dir   = "v0_2_3";
  inputs."nigui-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_3".ref   = "master";
  inputs."nigui-v0_2_3".repo  = "nigui";
  inputs."nigui-v0_2_3".type  = "github";
  inputs."nigui-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_4".dir   = "v0_2_4";
  inputs."nigui-v0_2_4".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_4".ref   = "master";
  inputs."nigui-v0_2_4".repo  = "nigui";
  inputs."nigui-v0_2_4".type  = "github";
  inputs."nigui-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_5".dir   = "v0_2_5";
  inputs."nigui-v0_2_5".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_5".ref   = "master";
  inputs."nigui-v0_2_5".repo  = "nigui";
  inputs."nigui-v0_2_5".type  = "github";
  inputs."nigui-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_6".dir   = "v0_2_6";
  inputs."nigui-v0_2_6".owner = "nim-nix-pkgs";
  inputs."nigui-v0_2_6".ref   = "master";
  inputs."nigui-v0_2_6".repo  = "nigui";
  inputs."nigui-v0_2_6".type  = "github";
  inputs."nigui-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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