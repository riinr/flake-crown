{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kombinator-develop".dir   = "develop";
  inputs."kombinator-develop".owner = "nim-nix-pkgs";
  inputs."kombinator-develop".ref   = "master";
  inputs."kombinator-develop".repo  = "kombinator";
  inputs."kombinator-develop".type  = "github";
  inputs."kombinator-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-master".dir   = "master";
  inputs."kombinator-master".owner = "nim-nix-pkgs";
  inputs."kombinator-master".ref   = "master";
  inputs."kombinator-master".repo  = "kombinator";
  inputs."kombinator-master".type  = "github";
  inputs."kombinator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_0".dir   = "1_0_0";
  inputs."kombinator-1_0_0".owner = "nim-nix-pkgs";
  inputs."kombinator-1_0_0".ref   = "master";
  inputs."kombinator-1_0_0".repo  = "kombinator";
  inputs."kombinator-1_0_0".type  = "github";
  inputs."kombinator-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_1".dir   = "1_0_1";
  inputs."kombinator-1_0_1".owner = "nim-nix-pkgs";
  inputs."kombinator-1_0_1".ref   = "master";
  inputs."kombinator-1_0_1".repo  = "kombinator";
  inputs."kombinator-1_0_1".type  = "github";
  inputs."kombinator-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_2".dir   = "1_0_2";
  inputs."kombinator-1_0_2".owner = "nim-nix-pkgs";
  inputs."kombinator-1_0_2".ref   = "master";
  inputs."kombinator-1_0_2".repo  = "kombinator";
  inputs."kombinator-1_0_2".type  = "github";
  inputs."kombinator-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_1_0".dir   = "1_1_0";
  inputs."kombinator-1_1_0".owner = "nim-nix-pkgs";
  inputs."kombinator-1_1_0".ref   = "master";
  inputs."kombinator-1_1_0".repo  = "kombinator";
  inputs."kombinator-1_1_0".type  = "github";
  inputs."kombinator-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_2_0".dir   = "1_2_0";
  inputs."kombinator-1_2_0".owner = "nim-nix-pkgs";
  inputs."kombinator-1_2_0".ref   = "master";
  inputs."kombinator-1_2_0".repo  = "kombinator";
  inputs."kombinator-1_2_0".type  = "github";
  inputs."kombinator-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_3_0".dir   = "1_3_0";
  inputs."kombinator-1_3_0".owner = "nim-nix-pkgs";
  inputs."kombinator-1_3_0".ref   = "master";
  inputs."kombinator-1_3_0".repo  = "kombinator";
  inputs."kombinator-1_3_0".type  = "github";
  inputs."kombinator-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_3_1".dir   = "1_3_1";
  inputs."kombinator-1_3_1".owner = "nim-nix-pkgs";
  inputs."kombinator-1_3_1".ref   = "master";
  inputs."kombinator-1_3_1".repo  = "kombinator";
  inputs."kombinator-1_3_1".type  = "github";
  inputs."kombinator-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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