{
  description = ''SuperCollider wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omnicollider-develop".dir   = "develop";
  inputs."omnicollider-develop".owner = "nim-nix-pkgs";
  inputs."omnicollider-develop".ref   = "master";
  inputs."omnicollider-develop".repo  = "omnicollider";
  inputs."omnicollider-develop".type  = "github";
  inputs."omnicollider-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-master".dir   = "master";
  inputs."omnicollider-master".owner = "nim-nix-pkgs";
  inputs."omnicollider-master".ref   = "master";
  inputs."omnicollider-master".repo  = "omnicollider";
  inputs."omnicollider-master".type  = "github";
  inputs."omnicollider-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_1_0".dir   = "0_1_0";
  inputs."omnicollider-0_1_0".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_1_0".ref   = "master";
  inputs."omnicollider-0_1_0".repo  = "omnicollider";
  inputs."omnicollider-0_1_0".type  = "github";
  inputs."omnicollider-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_0".dir   = "0_2_0";
  inputs."omnicollider-0_2_0".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_2_0".ref   = "master";
  inputs."omnicollider-0_2_0".repo  = "omnicollider";
  inputs."omnicollider-0_2_0".type  = "github";
  inputs."omnicollider-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_1".dir   = "0_2_1";
  inputs."omnicollider-0_2_1".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_2_1".ref   = "master";
  inputs."omnicollider-0_2_1".repo  = "omnicollider";
  inputs."omnicollider-0_2_1".type  = "github";
  inputs."omnicollider-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_2".dir   = "0_2_2";
  inputs."omnicollider-0_2_2".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_2_2".ref   = "master";
  inputs."omnicollider-0_2_2".repo  = "omnicollider";
  inputs."omnicollider-0_2_2".type  = "github";
  inputs."omnicollider-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_3".dir   = "0_2_3";
  inputs."omnicollider-0_2_3".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_2_3".ref   = "master";
  inputs."omnicollider-0_2_3".repo  = "omnicollider";
  inputs."omnicollider-0_2_3".type  = "github";
  inputs."omnicollider-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_4_0".dir   = "0_4_0";
  inputs."omnicollider-0_4_0".owner = "nim-nix-pkgs";
  inputs."omnicollider-0_4_0".ref   = "master";
  inputs."omnicollider-0_4_0".repo  = "omnicollider";
  inputs."omnicollider-0_4_0".type  = "github";
  inputs."omnicollider-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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