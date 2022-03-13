{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpwc-master".dir   = "master";
  inputs."mpwc-master".owner = "nim-nix-pkgs";
  inputs."mpwc-master".ref   = "master";
  inputs."mpwc-master".repo  = "mpwc";
  inputs."mpwc-master".type  = "github";
  inputs."mpwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_0".dir   = "v0_1_0";
  inputs."mpwc-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mpwc-v0_1_0".ref   = "master";
  inputs."mpwc-v0_1_0".repo  = "mpwc";
  inputs."mpwc-v0_1_0".type  = "github";
  inputs."mpwc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_1".dir   = "v0_1_1";
  inputs."mpwc-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mpwc-v0_1_1".ref   = "master";
  inputs."mpwc-v0_1_1".repo  = "mpwc";
  inputs."mpwc-v0_1_1".type  = "github";
  inputs."mpwc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_2".dir   = "v0_1_2";
  inputs."mpwc-v0_1_2".owner = "nim-nix-pkgs";
  inputs."mpwc-v0_1_2".ref   = "master";
  inputs."mpwc-v0_1_2".repo  = "mpwc";
  inputs."mpwc-v0_1_2".type  = "github";
  inputs."mpwc-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_3".dir   = "v0_1_3";
  inputs."mpwc-v0_1_3".owner = "nim-nix-pkgs";
  inputs."mpwc-v0_1_3".ref   = "master";
  inputs."mpwc-v0_1_3".repo  = "mpwc";
  inputs."mpwc-v0_1_3".type  = "github";
  inputs."mpwc-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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