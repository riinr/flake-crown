{
  description = ''a simpler and less fascist fork of nim-result'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."badresults-master".dir   = "master";
  inputs."badresults-master".owner = "nim-nix-pkgs";
  inputs."badresults-master".ref   = "master";
  inputs."badresults-master".repo  = "badresults";
  inputs."badresults-master".type  = "github";
  inputs."badresults-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-1_0_0".dir   = "1_0_0";
  inputs."badresults-1_0_0".owner = "nim-nix-pkgs";
  inputs."badresults-1_0_0".ref   = "master";
  inputs."badresults-1_0_0".repo  = "badresults";
  inputs."badresults-1_0_0".type  = "github";
  inputs."badresults-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-1_0_1".dir   = "1_0_1";
  inputs."badresults-1_0_1".owner = "nim-nix-pkgs";
  inputs."badresults-1_0_1".ref   = "master";
  inputs."badresults-1_0_1".repo  = "badresults";
  inputs."badresults-1_0_1".type  = "github";
  inputs."badresults-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-2_0_0".dir   = "2_0_0";
  inputs."badresults-2_0_0".owner = "nim-nix-pkgs";
  inputs."badresults-2_0_0".ref   = "master";
  inputs."badresults-2_0_0".repo  = "badresults";
  inputs."badresults-2_0_0".type  = "github";
  inputs."badresults-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-2_1_0".dir   = "2_1_0";
  inputs."badresults-2_1_0".owner = "nim-nix-pkgs";
  inputs."badresults-2_1_0".ref   = "master";
  inputs."badresults-2_1_0".repo  = "badresults";
  inputs."badresults-2_1_0".type  = "github";
  inputs."badresults-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-2_1_1".dir   = "2_1_1";
  inputs."badresults-2_1_1".owner = "nim-nix-pkgs";
  inputs."badresults-2_1_1".ref   = "master";
  inputs."badresults-2_1_1".repo  = "badresults";
  inputs."badresults-2_1_1".type  = "github";
  inputs."badresults-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-2_1_2".dir   = "2_1_2";
  inputs."badresults-2_1_2".owner = "nim-nix-pkgs";
  inputs."badresults-2_1_2".ref   = "master";
  inputs."badresults-2_1_2".repo  = "badresults";
  inputs."badresults-2_1_2".type  = "github";
  inputs."badresults-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."badresults-2_1_3".dir   = "2_1_3";
  inputs."badresults-2_1_3".owner = "nim-nix-pkgs";
  inputs."badresults-2_1_3".ref   = "master";
  inputs."badresults-2_1_3".repo  = "badresults";
  inputs."badresults-2_1_3".type  = "github";
  inputs."badresults-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badresults-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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