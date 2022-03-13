{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mcd-develop".dir   = "develop";
  inputs."mcd-develop".owner = "nim-nix-pkgs";
  inputs."mcd-develop".ref   = "master";
  inputs."mcd-develop".repo  = "mcd";
  inputs."mcd-develop".type  = "github";
  inputs."mcd-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-master".dir   = "master";
  inputs."mcd-master".owner = "nim-nix-pkgs";
  inputs."mcd-master".ref   = "master";
  inputs."mcd-master".repo  = "mcd";
  inputs."mcd-master".type  = "github";
  inputs."mcd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_1_0".dir   = "0_1_0";
  inputs."mcd-0_1_0".owner = "nim-nix-pkgs";
  inputs."mcd-0_1_0".ref   = "master";
  inputs."mcd-0_1_0".repo  = "mcd";
  inputs."mcd-0_1_0".type  = "github";
  inputs."mcd-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_2_0".dir   = "0_2_0";
  inputs."mcd-0_2_0".owner = "nim-nix-pkgs";
  inputs."mcd-0_2_0".ref   = "master";
  inputs."mcd-0_2_0".repo  = "mcd";
  inputs."mcd-0_2_0".type  = "github";
  inputs."mcd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_0".dir   = "0_3_0";
  inputs."mcd-0_3_0".owner = "nim-nix-pkgs";
  inputs."mcd-0_3_0".ref   = "master";
  inputs."mcd-0_3_0".repo  = "mcd";
  inputs."mcd-0_3_0".type  = "github";
  inputs."mcd-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_1".dir   = "0_3_1";
  inputs."mcd-0_3_1".owner = "nim-nix-pkgs";
  inputs."mcd-0_3_1".ref   = "master";
  inputs."mcd-0_3_1".repo  = "mcd";
  inputs."mcd-0_3_1".type  = "github";
  inputs."mcd-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_2".dir   = "0_3_2";
  inputs."mcd-0_3_2".owner = "nim-nix-pkgs";
  inputs."mcd-0_3_2".ref   = "master";
  inputs."mcd-0_3_2".repo  = "mcd";
  inputs."mcd-0_3_2".type  = "github";
  inputs."mcd-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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