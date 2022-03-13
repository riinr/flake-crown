{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimquery-master".dir   = "master";
  inputs."nimquery-master".owner = "nim-nix-pkgs";
  inputs."nimquery-master".ref   = "master";
  inputs."nimquery-master".repo  = "nimquery";
  inputs."nimquery-master".type  = "github";
  inputs."nimquery-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_0".dir   = "v1_0_0";
  inputs."nimquery-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_0_0".ref   = "master";
  inputs."nimquery-v1_0_0".repo  = "nimquery";
  inputs."nimquery-v1_0_0".type  = "github";
  inputs."nimquery-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_1".dir   = "v1_0_1";
  inputs."nimquery-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_0_1".ref   = "master";
  inputs."nimquery-v1_0_1".repo  = "nimquery";
  inputs."nimquery-v1_0_1".type  = "github";
  inputs."nimquery-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_2".dir   = "v1_0_2";
  inputs."nimquery-v1_0_2".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_0_2".ref   = "master";
  inputs."nimquery-v1_0_2".repo  = "nimquery";
  inputs."nimquery-v1_0_2".type  = "github";
  inputs."nimquery-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_0".dir   = "v1_1_0";
  inputs."nimquery-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_1_0".ref   = "master";
  inputs."nimquery-v1_1_0".repo  = "nimquery";
  inputs."nimquery-v1_1_0".type  = "github";
  inputs."nimquery-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_1".dir   = "v1_1_1";
  inputs."nimquery-v1_1_1".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_1_1".ref   = "master";
  inputs."nimquery-v1_1_1".repo  = "nimquery";
  inputs."nimquery-v1_1_1".type  = "github";
  inputs."nimquery-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_2".dir   = "v1_1_2";
  inputs."nimquery-v1_1_2".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_1_2".ref   = "master";
  inputs."nimquery-v1_1_2".repo  = "nimquery";
  inputs."nimquery-v1_1_2".type  = "github";
  inputs."nimquery-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_0".dir   = "v1_2_0";
  inputs."nimquery-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_2_0".ref   = "master";
  inputs."nimquery-v1_2_0".repo  = "nimquery";
  inputs."nimquery-v1_2_0".type  = "github";
  inputs."nimquery-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_1".dir   = "v1_2_1";
  inputs."nimquery-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_2_1".ref   = "master";
  inputs."nimquery-v1_2_1".repo  = "nimquery";
  inputs."nimquery-v1_2_1".type  = "github";
  inputs."nimquery-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_2".dir   = "v1_2_2";
  inputs."nimquery-v1_2_2".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_2_2".ref   = "master";
  inputs."nimquery-v1_2_2".repo  = "nimquery";
  inputs."nimquery-v1_2_2".type  = "github";
  inputs."nimquery-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_3".dir   = "v1_2_3";
  inputs."nimquery-v1_2_3".owner = "nim-nix-pkgs";
  inputs."nimquery-v1_2_3".ref   = "master";
  inputs."nimquery-v1_2_3".repo  = "nimquery";
  inputs."nimquery-v1_2_3".type  = "github";
  inputs."nimquery-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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