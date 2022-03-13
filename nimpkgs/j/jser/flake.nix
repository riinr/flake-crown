{
  description = ''json de/serializer for tuples and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jser-master".dir   = "master";
  inputs."jser-master".owner = "nim-nix-pkgs";
  inputs."jser-master".ref   = "master";
  inputs."jser-master".repo  = "jser";
  inputs."jser-master".type  = "github";
  inputs."jser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jser-0_1_0".dir   = "0_1_0";
  inputs."jser-0_1_0".owner = "nim-nix-pkgs";
  inputs."jser-0_1_0".ref   = "master";
  inputs."jser-0_1_0".repo  = "jser";
  inputs."jser-0_1_0".type  = "github";
  inputs."jser-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jser-0_1_1".dir   = "0_1_1";
  inputs."jser-0_1_1".owner = "nim-nix-pkgs";
  inputs."jser-0_1_1".ref   = "master";
  inputs."jser-0_1_1".repo  = "jser";
  inputs."jser-0_1_1".type  = "github";
  inputs."jser-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jser-0_2_0".dir   = "0_2_0";
  inputs."jser-0_2_0".owner = "nim-nix-pkgs";
  inputs."jser-0_2_0".ref   = "master";
  inputs."jser-0_2_0".repo  = "jser";
  inputs."jser-0_2_0".type  = "github";
  inputs."jser-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jser-0_2_1".dir   = "0_2_1";
  inputs."jser-0_2_1".owner = "nim-nix-pkgs";
  inputs."jser-0_2_1".ref   = "master";
  inputs."jser-0_2_1".repo  = "jser";
  inputs."jser-0_2_1".type  = "github";
  inputs."jser-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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