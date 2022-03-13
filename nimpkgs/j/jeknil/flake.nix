{
  description = ''A blog post generator for people with priorities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jeknil-master".dir   = "master";
  inputs."jeknil-master".owner = "nim-nix-pkgs";
  inputs."jeknil-master".ref   = "master";
  inputs."jeknil-master".repo  = "jeknil";
  inputs."jeknil-master".type  = "github";
  inputs."jeknil-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jeknil-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jeknil-v0_1_0".dir   = "v0_1_0";
  inputs."jeknil-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jeknil-v0_1_0".ref   = "master";
  inputs."jeknil-v0_1_0".repo  = "jeknil";
  inputs."jeknil-v0_1_0".type  = "github";
  inputs."jeknil-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jeknil-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jeknil-v0_1_1".dir   = "v0_1_1";
  inputs."jeknil-v0_1_1".owner = "nim-nix-pkgs";
  inputs."jeknil-v0_1_1".ref   = "master";
  inputs."jeknil-v0_1_1".repo  = "jeknil";
  inputs."jeknil-v0_1_1".type  = "github";
  inputs."jeknil-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jeknil-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jeknil-v0_2_0".dir   = "v0_2_0";
  inputs."jeknil-v0_2_0".owner = "nim-nix-pkgs";
  inputs."jeknil-v0_2_0".ref   = "master";
  inputs."jeknil-v0_2_0".repo  = "jeknil";
  inputs."jeknil-v0_2_0".type  = "github";
  inputs."jeknil-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jeknil-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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