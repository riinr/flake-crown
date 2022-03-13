{
  description = ''pnm is library for PNM (Portable AnyMap).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pnm-develop".dir   = "develop";
  inputs."pnm-develop".owner = "nim-nix-pkgs";
  inputs."pnm-develop".ref   = "master";
  inputs."pnm-develop".repo  = "pnm";
  inputs."pnm-develop".type  = "github";
  inputs."pnm-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-master".dir   = "master";
  inputs."pnm-master".owner = "nim-nix-pkgs";
  inputs."pnm-master".ref   = "master";
  inputs."pnm-master".repo  = "pnm";
  inputs."pnm-master".type  = "github";
  inputs."pnm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_0_0".dir   = "v2_0_0";
  inputs."pnm-v2_0_0".owner = "nim-nix-pkgs";
  inputs."pnm-v2_0_0".ref   = "master";
  inputs."pnm-v2_0_0".repo  = "pnm";
  inputs."pnm-v2_0_0".type  = "github";
  inputs."pnm-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_0_1".dir   = "v2_0_1";
  inputs."pnm-v2_0_1".owner = "nim-nix-pkgs";
  inputs."pnm-v2_0_1".ref   = "master";
  inputs."pnm-v2_0_1".repo  = "pnm";
  inputs."pnm-v2_0_1".type  = "github";
  inputs."pnm-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_1_0".dir   = "v2_1_0";
  inputs."pnm-v2_1_0".owner = "nim-nix-pkgs";
  inputs."pnm-v2_1_0".ref   = "master";
  inputs."pnm-v2_1_0".repo  = "pnm";
  inputs."pnm-v2_1_0".type  = "github";
  inputs."pnm-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_1_1".dir   = "v2_1_1";
  inputs."pnm-v2_1_1".owner = "nim-nix-pkgs";
  inputs."pnm-v2_1_1".ref   = "master";
  inputs."pnm-v2_1_1".repo  = "pnm";
  inputs."pnm-v2_1_1".type  = "github";
  inputs."pnm-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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