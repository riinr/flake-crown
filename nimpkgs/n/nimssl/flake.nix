{
  description = ''OpenSSL wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimssl-master".dir   = "master";
  inputs."nimssl-master".owner = "nim-nix-pkgs";
  inputs."nimssl-master".ref   = "master";
  inputs."nimssl-master".repo  = "nimssl";
  inputs."nimssl-master".type  = "github";
  inputs."nimssl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssl-v0_1_0".dir   = "v0_1_0";
  inputs."nimssl-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimssl-v0_1_0".ref   = "master";
  inputs."nimssl-v0_1_0".repo  = "nimssl";
  inputs."nimssl-v0_1_0".type  = "github";
  inputs."nimssl-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssl-v0_1_2".dir   = "v0_1_2";
  inputs."nimssl-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimssl-v0_1_2".ref   = "master";
  inputs."nimssl-v0_1_2".repo  = "nimssl";
  inputs."nimssl-v0_1_2".type  = "github";
  inputs."nimssl-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssl-v0_1_3".dir   = "v0_1_3";
  inputs."nimssl-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimssl-v0_1_3".ref   = "master";
  inputs."nimssl-v0_1_3".repo  = "nimssl";
  inputs."nimssl-v0_1_3".type  = "github";
  inputs."nimssl-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssl-v0_1_4".dir   = "v0_1_4";
  inputs."nimssl-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimssl-v0_1_4".ref   = "master";
  inputs."nimssl-v0_1_4".repo  = "nimssl";
  inputs."nimssl-v0_1_4".type  = "github";
  inputs."nimssl-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssl-v0_1_5".dir   = "v0_1_5";
  inputs."nimssl-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimssl-v0_1_5".ref   = "master";
  inputs."nimssl-v0_1_5".repo  = "nimssl";
  inputs."nimssl-v0_1_5".type  = "github";
  inputs."nimssl-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssl-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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