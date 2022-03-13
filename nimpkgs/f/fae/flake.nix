{
  description = ''Find and Edit Utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fae-master".dir   = "master";
  inputs."fae-master".owner = "nim-nix-pkgs";
  inputs."fae-master".ref   = "master";
  inputs."fae-master".repo  = "fae";
  inputs."fae-master".type  = "github";
  inputs."fae-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fae-v1_0_0".dir   = "v1_0_0";
  inputs."fae-v1_0_0".owner = "nim-nix-pkgs";
  inputs."fae-v1_0_0".ref   = "master";
  inputs."fae-v1_0_0".repo  = "fae";
  inputs."fae-v1_0_0".type  = "github";
  inputs."fae-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fae-v1_1_0".dir   = "v1_1_0";
  inputs."fae-v1_1_0".owner = "nim-nix-pkgs";
  inputs."fae-v1_1_0".ref   = "master";
  inputs."fae-v1_1_0".repo  = "fae";
  inputs."fae-v1_1_0".type  = "github";
  inputs."fae-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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