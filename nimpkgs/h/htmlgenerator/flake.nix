{
  description = ''Generate HTML string by nim object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htmlgenerator-devel".dir   = "devel";
  inputs."htmlgenerator-devel".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-devel".ref   = "master";
  inputs."htmlgenerator-devel".repo  = "htmlgenerator";
  inputs."htmlgenerator-devel".type  = "github";
  inputs."htmlgenerator-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-master".dir   = "master";
  inputs."htmlgenerator-master".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-master".ref   = "master";
  inputs."htmlgenerator-master".repo  = "htmlgenerator";
  inputs."htmlgenerator-master".type  = "github";
  inputs."htmlgenerator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_0".dir   = "v0_1_0";
  inputs."htmlgenerator-v0_1_0".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_0".ref   = "master";
  inputs."htmlgenerator-v0_1_0".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_0".type  = "github";
  inputs."htmlgenerator-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_1".dir   = "v0_1_1";
  inputs."htmlgenerator-v0_1_1".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_1".ref   = "master";
  inputs."htmlgenerator-v0_1_1".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_1".type  = "github";
  inputs."htmlgenerator-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_2".dir   = "v0_1_2";
  inputs."htmlgenerator-v0_1_2".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_2".ref   = "master";
  inputs."htmlgenerator-v0_1_2".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_2".type  = "github";
  inputs."htmlgenerator-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_3".dir   = "v0_1_3";
  inputs."htmlgenerator-v0_1_3".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_3".ref   = "master";
  inputs."htmlgenerator-v0_1_3".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_3".type  = "github";
  inputs."htmlgenerator-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_4".dir   = "v0_1_4";
  inputs."htmlgenerator-v0_1_4".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_4".ref   = "master";
  inputs."htmlgenerator-v0_1_4".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_4".type  = "github";
  inputs."htmlgenerator-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlgenerator-v0_1_5".dir   = "v0_1_5";
  inputs."htmlgenerator-v0_1_5".owner = "nim-nix-pkgs";
  inputs."htmlgenerator-v0_1_5".ref   = "master";
  inputs."htmlgenerator-v0_1_5".repo  = "htmlgenerator";
  inputs."htmlgenerator-v0_1_5".type  = "github";
  inputs."htmlgenerator-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlgenerator-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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