{
  description = ''Base45 encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."base45-trunk".dir   = "trunk";
  inputs."base45-trunk".owner = "nim-nix-pkgs";
  inputs."base45-trunk".ref   = "master";
  inputs."base45-trunk".repo  = "base45";
  inputs."base45-trunk".type  = "github";
  inputs."base45-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base45-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base45-0_1_0".dir   = "0_1_0";
  inputs."base45-0_1_0".owner = "nim-nix-pkgs";
  inputs."base45-0_1_0".ref   = "master";
  inputs."base45-0_1_0".repo  = "base45";
  inputs."base45-0_1_0".type  = "github";
  inputs."base45-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base45-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base45-1_0_0".dir   = "1_0_0";
  inputs."base45-1_0_0".owner = "nim-nix-pkgs";
  inputs."base45-1_0_0".ref   = "master";
  inputs."base45-1_0_0".repo  = "base45";
  inputs."base45-1_0_0".type  = "github";
  inputs."base45-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base45-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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