{
  description = ''A RPC framework for building web APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nerve-master".dir   = "master";
  inputs."nerve-master".owner = "nim-nix-pkgs";
  inputs."nerve-master".ref   = "master";
  inputs."nerve-master".repo  = "nerve";
  inputs."nerve-master".type  = "github";
  inputs."nerve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_1_0".dir   = "0_1_0";
  inputs."nerve-0_1_0".owner = "nim-nix-pkgs";
  inputs."nerve-0_1_0".ref   = "master";
  inputs."nerve-0_1_0".repo  = "nerve";
  inputs."nerve-0_1_0".type  = "github";
  inputs."nerve-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_1_1".dir   = "0_1_1";
  inputs."nerve-0_1_1".owner = "nim-nix-pkgs";
  inputs."nerve-0_1_1".ref   = "master";
  inputs."nerve-0_1_1".repo  = "nerve";
  inputs."nerve-0_1_1".type  = "github";
  inputs."nerve-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_2_0".dir   = "0_2_0";
  inputs."nerve-0_2_0".owner = "nim-nix-pkgs";
  inputs."nerve-0_2_0".ref   = "master";
  inputs."nerve-0_2_0".repo  = "nerve";
  inputs."nerve-0_2_0".type  = "github";
  inputs."nerve-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_3_0".dir   = "0_3_0";
  inputs."nerve-0_3_0".owner = "nim-nix-pkgs";
  inputs."nerve-0_3_0".ref   = "master";
  inputs."nerve-0_3_0".repo  = "nerve";
  inputs."nerve-0_3_0".type  = "github";
  inputs."nerve-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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