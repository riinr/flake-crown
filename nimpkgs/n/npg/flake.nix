{
  description = ''Password generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."npg-master".dir   = "master";
  inputs."npg-master".owner = "nim-nix-pkgs";
  inputs."npg-master".ref   = "master";
  inputs."npg-master".repo  = "npg";
  inputs."npg-master".type  = "github";
  inputs."npg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npg-0_1_0".dir   = "0_1_0";
  inputs."npg-0_1_0".owner = "nim-nix-pkgs";
  inputs."npg-0_1_0".ref   = "master";
  inputs."npg-0_1_0".repo  = "npg";
  inputs."npg-0_1_0".type  = "github";
  inputs."npg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npg-0_2_0".dir   = "0_2_0";
  inputs."npg-0_2_0".owner = "nim-nix-pkgs";
  inputs."npg-0_2_0".ref   = "master";
  inputs."npg-0_2_0".repo  = "npg";
  inputs."npg-0_2_0".type  = "github";
  inputs."npg-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npg-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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