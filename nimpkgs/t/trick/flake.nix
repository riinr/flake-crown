{
  description = ''Game Boy Advance image conversion library and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."trick-master".dir   = "master";
  inputs."trick-master".owner = "nim-nix-pkgs";
  inputs."trick-master".ref   = "master";
  inputs."trick-master".repo  = "trick";
  inputs."trick-master".type  = "github";
  inputs."trick-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trick-0_1_1".dir   = "0_1_1";
  inputs."trick-0_1_1".owner = "nim-nix-pkgs";
  inputs."trick-0_1_1".ref   = "master";
  inputs."trick-0_1_1".repo  = "trick";
  inputs."trick-0_1_1".type  = "github";
  inputs."trick-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trick-0_1_2".dir   = "0_1_2";
  inputs."trick-0_1_2".owner = "nim-nix-pkgs";
  inputs."trick-0_1_2".ref   = "master";
  inputs."trick-0_1_2".repo  = "trick";
  inputs."trick-0_1_2".type  = "github";
  inputs."trick-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trick-0_1_3".dir   = "0_1_3";
  inputs."trick-0_1_3".owner = "nim-nix-pkgs";
  inputs."trick-0_1_3".ref   = "master";
  inputs."trick-0_1_3".repo  = "trick";
  inputs."trick-0_1_3".type  = "github";
  inputs."trick-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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