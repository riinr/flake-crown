{
  description = ''Trait system for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtraits-master".dir   = "master";
  inputs."nimtraits-master".owner = "nim-nix-pkgs";
  inputs."nimtraits-master".ref   = "master";
  inputs."nimtraits-master".repo  = "nimtraits";
  inputs."nimtraits-master".type  = "github";
  inputs."nimtraits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_2".dir   = "v0_1_2";
  inputs."nimtraits-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimtraits-v0_1_2".ref   = "master";
  inputs."nimtraits-v0_1_2".repo  = "nimtraits";
  inputs."nimtraits-v0_1_2".type  = "github";
  inputs."nimtraits-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_3".dir   = "v0_1_3";
  inputs."nimtraits-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimtraits-v0_1_3".ref   = "master";
  inputs."nimtraits-v0_1_3".repo  = "nimtraits";
  inputs."nimtraits-v0_1_3".type  = "github";
  inputs."nimtraits-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_4".dir   = "v0_1_4";
  inputs."nimtraits-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimtraits-v0_1_4".ref   = "master";
  inputs."nimtraits-v0_1_4".repo  = "nimtraits";
  inputs."nimtraits-v0_1_4".type  = "github";
  inputs."nimtraits-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_5".dir   = "v0_1_5";
  inputs."nimtraits-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimtraits-v0_1_5".ref   = "master";
  inputs."nimtraits-v0_1_5".repo  = "nimtraits";
  inputs."nimtraits-v0_1_5".type  = "github";
  inputs."nimtraits-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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