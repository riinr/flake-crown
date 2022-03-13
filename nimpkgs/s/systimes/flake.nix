{
  description = ''An alternative DateTime implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."systimes-master".dir   = "master";
  inputs."systimes-master".owner = "nim-nix-pkgs";
  inputs."systimes-master".ref   = "master";
  inputs."systimes-master".repo  = "systimes";
  inputs."systimes-master".type  = "github";
  inputs."systimes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."systimes-v0_2_0".dir   = "v0_2_0";
  inputs."systimes-v0_2_0".owner = "nim-nix-pkgs";
  inputs."systimes-v0_2_0".ref   = "master";
  inputs."systimes-v0_2_0".repo  = "systimes";
  inputs."systimes-v0_2_0".type  = "github";
  inputs."systimes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."systimes-v0_2_1".dir   = "v0_2_1";
  inputs."systimes-v0_2_1".owner = "nim-nix-pkgs";
  inputs."systimes-v0_2_1".ref   = "master";
  inputs."systimes-v0_2_1".repo  = "systimes";
  inputs."systimes-v0_2_1".type  = "github";
  inputs."systimes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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