{
  description = ''libxslxwriter wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlibxlsxwriter-master".dir   = "master";
  inputs."nimlibxlsxwriter-master".owner = "nim-nix-pkgs";
  inputs."nimlibxlsxwriter-master".ref   = "master";
  inputs."nimlibxlsxwriter-master".repo  = "nimlibxlsxwriter";
  inputs."nimlibxlsxwriter-master".type  = "github";
  inputs."nimlibxlsxwriter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlibxlsxwriter-v0_1_1".dir   = "v0_1_1";
  inputs."nimlibxlsxwriter-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimlibxlsxwriter-v0_1_1".ref   = "master";
  inputs."nimlibxlsxwriter-v0_1_1".repo  = "nimlibxlsxwriter";
  inputs."nimlibxlsxwriter-v0_1_1".type  = "github";
  inputs."nimlibxlsxwriter-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlibxlsxwriter-v0_1_2".dir   = "v0_1_2";
  inputs."nimlibxlsxwriter-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimlibxlsxwriter-v0_1_2".ref   = "master";
  inputs."nimlibxlsxwriter-v0_1_2".repo  = "nimlibxlsxwriter";
  inputs."nimlibxlsxwriter-v0_1_2".type  = "github";
  inputs."nimlibxlsxwriter-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlibxlsxwriter-v0_1_3".dir   = "v0_1_3";
  inputs."nimlibxlsxwriter-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimlibxlsxwriter-v0_1_3".ref   = "master";
  inputs."nimlibxlsxwriter-v0_1_3".repo  = "nimlibxlsxwriter";
  inputs."nimlibxlsxwriter-v0_1_3".type  = "github";
  inputs."nimlibxlsxwriter-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlibxlsxwriter-v0_3_0".dir   = "v0_3_0";
  inputs."nimlibxlsxwriter-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimlibxlsxwriter-v0_3_0".ref   = "master";
  inputs."nimlibxlsxwriter-v0_3_0".repo  = "nimlibxlsxwriter";
  inputs."nimlibxlsxwriter-v0_3_0".type  = "github";
  inputs."nimlibxlsxwriter-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlibxlsxwriter-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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