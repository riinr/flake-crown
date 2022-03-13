{
  description = ''Easy specification of text formats for structured data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."textformats-main".dir   = "main";
  inputs."textformats-main".owner = "nim-nix-pkgs";
  inputs."textformats-main".ref   = "master";
  inputs."textformats-main".repo  = "textformats";
  inputs."textformats-main".type  = "github";
  inputs."textformats-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-1_2_0".dir   = "1_2_0";
  inputs."textformats-1_2_0".owner = "nim-nix-pkgs";
  inputs."textformats-1_2_0".ref   = "master";
  inputs."textformats-1_2_0".repo  = "textformats";
  inputs."textformats-1_2_0".type  = "github";
  inputs."textformats-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_0_0".dir   = "v1_0_0";
  inputs."textformats-v1_0_0".owner = "nim-nix-pkgs";
  inputs."textformats-v1_0_0".ref   = "master";
  inputs."textformats-v1_0_0".repo  = "textformats";
  inputs."textformats-v1_0_0".type  = "github";
  inputs."textformats-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_1_0".dir   = "v1_1_0";
  inputs."textformats-v1_1_0".owner = "nim-nix-pkgs";
  inputs."textformats-v1_1_0".ref   = "master";
  inputs."textformats-v1_1_0".repo  = "textformats";
  inputs."textformats-v1_1_0".type  = "github";
  inputs."textformats-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_2_1".dir   = "v1_2_1";
  inputs."textformats-v1_2_1".owner = "nim-nix-pkgs";
  inputs."textformats-v1_2_1".ref   = "master";
  inputs."textformats-v1_2_1".repo  = "textformats";
  inputs."textformats-v1_2_1".type  = "github";
  inputs."textformats-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."textformats-v1_2_2".dir   = "v1_2_2";
  inputs."textformats-v1_2_2".owner = "nim-nix-pkgs";
  inputs."textformats-v1_2_2".ref   = "master";
  inputs."textformats-v1_2_2".repo  = "textformats";
  inputs."textformats-v1_2_2".type  = "github";
  inputs."textformats-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."textformats-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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