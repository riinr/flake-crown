{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polypbren-master".dir   = "master";
  inputs."polypbren-master".owner = "nim-nix-pkgs";
  inputs."polypbren-master".ref   = "master";
  inputs."polypbren-master".repo  = "polypbren";
  inputs."polypbren-master".type  = "github";
  inputs."polypbren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4-paper".dir   = "v0_4-paper";
  inputs."polypbren-v0_4-paper".owner = "nim-nix-pkgs";
  inputs."polypbren-v0_4-paper".ref   = "master";
  inputs."polypbren-v0_4-paper".repo  = "polypbren";
  inputs."polypbren-v0_4-paper".type  = "github";
  inputs."polypbren-v0_4-paper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4-paper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_1".dir   = "v0_4_1";
  inputs."polypbren-v0_4_1".owner = "nim-nix-pkgs";
  inputs."polypbren-v0_4_1".ref   = "master";
  inputs."polypbren-v0_4_1".repo  = "polypbren";
  inputs."polypbren-v0_4_1".type  = "github";
  inputs."polypbren-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_2".dir   = "v0_4_2";
  inputs."polypbren-v0_4_2".owner = "nim-nix-pkgs";
  inputs."polypbren-v0_4_2".ref   = "master";
  inputs."polypbren-v0_4_2".repo  = "polypbren";
  inputs."polypbren-v0_4_2".type  = "github";
  inputs."polypbren-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_3".dir   = "v0_4_3";
  inputs."polypbren-v0_4_3".owner = "nim-nix-pkgs";
  inputs."polypbren-v0_4_3".ref   = "master";
  inputs."polypbren-v0_4_3".repo  = "polypbren";
  inputs."polypbren-v0_4_3".type  = "github";
  inputs."polypbren-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_5_0".dir   = "v0_5_0";
  inputs."polypbren-v0_5_0".owner = "nim-nix-pkgs";
  inputs."polypbren-v0_5_0".ref   = "master";
  inputs."polypbren-v0_5_0".repo  = "polypbren";
  inputs."polypbren-v0_5_0".type  = "github";
  inputs."polypbren-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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