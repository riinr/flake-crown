{
  description = ''declarative UI framework for building Canvas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blackvas-master".dir   = "master";
  inputs."blackvas-master".owner = "nim-nix-pkgs";
  inputs."blackvas-master".ref   = "master";
  inputs."blackvas-master".repo  = "blackvas";
  inputs."blackvas-master".type  = "github";
  inputs."blackvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blackvas-0_1_0".dir   = "0_1_0";
  inputs."blackvas-0_1_0".owner = "nim-nix-pkgs";
  inputs."blackvas-0_1_0".ref   = "master";
  inputs."blackvas-0_1_0".repo  = "blackvas";
  inputs."blackvas-0_1_0".type  = "github";
  inputs."blackvas-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blackvas-0_2_0".dir   = "0_2_0";
  inputs."blackvas-0_2_0".owner = "nim-nix-pkgs";
  inputs."blackvas-0_2_0".ref   = "master";
  inputs."blackvas-0_2_0".repo  = "blackvas";
  inputs."blackvas-0_2_0".type  = "github";
  inputs."blackvas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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