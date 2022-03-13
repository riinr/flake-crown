{
  description = ''GitIgnore Generation Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gigi-v0_1_0".dir   = "v0_1_0";
  inputs."gigi-v0_1_0".owner = "nim-nix-pkgs";
  inputs."gigi-v0_1_0".ref   = "master";
  inputs."gigi-v0_1_0".repo  = "gigi";
  inputs."gigi-v0_1_0".type  = "github";
  inputs."gigi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gigi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gigi-v0_1_1".dir   = "v0_1_1";
  inputs."gigi-v0_1_1".owner = "nim-nix-pkgs";
  inputs."gigi-v0_1_1".ref   = "master";
  inputs."gigi-v0_1_1".repo  = "gigi";
  inputs."gigi-v0_1_1".type  = "github";
  inputs."gigi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gigi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gigi-v0_2_0".dir   = "v0_2_0";
  inputs."gigi-v0_2_0".owner = "nim-nix-pkgs";
  inputs."gigi-v0_2_0".ref   = "master";
  inputs."gigi-v0_2_0".repo  = "gigi";
  inputs."gigi-v0_2_0".type  = "github";
  inputs."gigi-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gigi-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gigi-v0_2_1".dir   = "v0_2_1";
  inputs."gigi-v0_2_1".owner = "nim-nix-pkgs";
  inputs."gigi-v0_2_1".ref   = "master";
  inputs."gigi-v0_2_1".repo  = "gigi";
  inputs."gigi-v0_2_1".type  = "github";
  inputs."gigi-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gigi-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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