{
  description = ''PCRE wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpcre-master".dir   = "master";
  inputs."nimpcre-master".owner = "nim-nix-pkgs";
  inputs."nimpcre-master".ref   = "master";
  inputs."nimpcre-master".repo  = "nimpcre";
  inputs."nimpcre-master".type  = "github";
  inputs."nimpcre-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_0".dir   = "v0_1_0";
  inputs."nimpcre-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_1_0".ref   = "master";
  inputs."nimpcre-v0_1_0".repo  = "nimpcre";
  inputs."nimpcre-v0_1_0".type  = "github";
  inputs."nimpcre-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_1".dir   = "v0_1_1";
  inputs."nimpcre-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_1_1".ref   = "master";
  inputs."nimpcre-v0_1_1".repo  = "nimpcre";
  inputs."nimpcre-v0_1_1".type  = "github";
  inputs."nimpcre-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_2".dir   = "v0_1_2";
  inputs."nimpcre-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_1_2".ref   = "master";
  inputs."nimpcre-v0_1_2".repo  = "nimpcre";
  inputs."nimpcre-v0_1_2".type  = "github";
  inputs."nimpcre-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_3".dir   = "v0_1_3";
  inputs."nimpcre-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_1_3".ref   = "master";
  inputs."nimpcre-v0_1_3".repo  = "nimpcre";
  inputs."nimpcre-v0_1_3".type  = "github";
  inputs."nimpcre-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_4".dir   = "v0_1_4";
  inputs."nimpcre-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_1_4".ref   = "master";
  inputs."nimpcre-v0_1_4".repo  = "nimpcre";
  inputs."nimpcre-v0_1_4".type  = "github";
  inputs."nimpcre-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_2_0".dir   = "v0_2_0";
  inputs."nimpcre-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_2_0".ref   = "master";
  inputs."nimpcre-v0_2_0".repo  = "nimpcre";
  inputs."nimpcre-v0_2_0".type  = "github";
  inputs."nimpcre-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_2_1".dir   = "v0_2_1";
  inputs."nimpcre-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimpcre-v0_2_1".ref   = "master";
  inputs."nimpcre-v0_2_1".repo  = "nimpcre";
  inputs."nimpcre-v0_2_1".type  = "github";
  inputs."nimpcre-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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