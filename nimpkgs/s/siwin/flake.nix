{
  description = ''Simple window maker.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."siwin-master".dir   = "master";
  inputs."siwin-master".owner = "nim-nix-pkgs";
  inputs."siwin-master".ref   = "master";
  inputs."siwin-master".repo  = "siwin";
  inputs."siwin-master".type  = "github";
  inputs."siwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_4".dir   = "0_4";
  inputs."siwin-0_4".owner = "nim-nix-pkgs";
  inputs."siwin-0_4".ref   = "master";
  inputs."siwin-0_4".repo  = "siwin";
  inputs."siwin-0_4".type  = "github";
  inputs."siwin-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_5".dir   = "0_5";
  inputs."siwin-0_5".owner = "nim-nix-pkgs";
  inputs."siwin-0_5".ref   = "master";
  inputs."siwin-0_5".repo  = "siwin";
  inputs."siwin-0_5".type  = "github";
  inputs."siwin-0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_5_1".dir   = "0_5_1";
  inputs."siwin-0_5_1".owner = "nim-nix-pkgs";
  inputs."siwin-0_5_1".ref   = "master";
  inputs."siwin-0_5_1".repo  = "siwin";
  inputs."siwin-0_5_1".type  = "github";
  inputs."siwin-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_5_2".dir   = "0_5_2";
  inputs."siwin-0_5_2".owner = "nim-nix-pkgs";
  inputs."siwin-0_5_2".ref   = "master";
  inputs."siwin-0_5_2".repo  = "siwin";
  inputs."siwin-0_5_2".type  = "github";
  inputs."siwin-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_5_3".dir   = "0_5_3";
  inputs."siwin-0_5_3".owner = "nim-nix-pkgs";
  inputs."siwin-0_5_3".ref   = "master";
  inputs."siwin-0_5_3".repo  = "siwin";
  inputs."siwin-0_5_3".type  = "github";
  inputs."siwin-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_6".dir   = "0_6";
  inputs."siwin-0_6".owner = "nim-nix-pkgs";
  inputs."siwin-0_6".ref   = "master";
  inputs."siwin-0_6".repo  = "siwin";
  inputs."siwin-0_6".type  = "github";
  inputs."siwin-0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_6_1".dir   = "0_6_1";
  inputs."siwin-0_6_1".owner = "nim-nix-pkgs";
  inputs."siwin-0_6_1".ref   = "master";
  inputs."siwin-0_6_1".repo  = "siwin";
  inputs."siwin-0_6_1".type  = "github";
  inputs."siwin-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-v0_3".dir   = "v0_3";
  inputs."siwin-v0_3".owner = "nim-nix-pkgs";
  inputs."siwin-v0_3".ref   = "master";
  inputs."siwin-v0_3".repo  = "siwin";
  inputs."siwin-v0_3".type  = "github";
  inputs."siwin-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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