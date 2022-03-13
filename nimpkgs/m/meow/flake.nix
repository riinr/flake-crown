{
  description = ''meowhash wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."meow-master".dir   = "master";
  inputs."meow-master".owner = "nim-nix-pkgs";
  inputs."meow-master".ref   = "master";
  inputs."meow-master".repo  = "meow";
  inputs."meow-master".type  = "github";
  inputs."meow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-0_1_0".dir   = "0_1_0";
  inputs."meow-0_1_0".owner = "nim-nix-pkgs";
  inputs."meow-0_1_0".ref   = "master";
  inputs."meow-0_1_0".repo  = "meow";
  inputs."meow-0_1_0".type  = "github";
  inputs."meow-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-0_2_0".dir   = "0_2_0";
  inputs."meow-0_2_0".owner = "nim-nix-pkgs";
  inputs."meow-0_2_0".ref   = "master";
  inputs."meow-0_2_0".repo  = "meow";
  inputs."meow-0_2_0".type  = "github";
  inputs."meow-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-v0_1_0".dir   = "v0_1_0";
  inputs."meow-v0_1_0".owner = "nim-nix-pkgs";
  inputs."meow-v0_1_0".ref   = "master";
  inputs."meow-v0_1_0".repo  = "meow";
  inputs."meow-v0_1_0".type  = "github";
  inputs."meow-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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