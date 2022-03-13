{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."schedules-master".dir   = "master";
  inputs."schedules-master".owner = "nim-nix-pkgs";
  inputs."schedules-master".ref   = "master";
  inputs."schedules-master".repo  = "schedules";
  inputs."schedules-master".type  = "github";
  inputs."schedules-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_1_1".dir   = "v0_1_1";
  inputs."schedules-v0_1_1".owner = "nim-nix-pkgs";
  inputs."schedules-v0_1_1".ref   = "master";
  inputs."schedules-v0_1_1".repo  = "schedules";
  inputs."schedules-v0_1_1".type  = "github";
  inputs."schedules-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_1_2".dir   = "v0_1_2";
  inputs."schedules-v0_1_2".owner = "nim-nix-pkgs";
  inputs."schedules-v0_1_2".ref   = "master";
  inputs."schedules-v0_1_2".repo  = "schedules";
  inputs."schedules-v0_1_2".type  = "github";
  inputs."schedules-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_2_0".dir   = "v0_2_0";
  inputs."schedules-v0_2_0".owner = "nim-nix-pkgs";
  inputs."schedules-v0_2_0".ref   = "master";
  inputs."schedules-v0_2_0".repo  = "schedules";
  inputs."schedules-v0_2_0".type  = "github";
  inputs."schedules-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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