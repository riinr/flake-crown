{
  description = ''Ray tracing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."trayx-master".dir   = "master";
  inputs."trayx-master".owner = "nim-nix-pkgs";
  inputs."trayx-master".ref   = "master";
  inputs."trayx-master".repo  = "trayx";
  inputs."trayx-master".type  = "github";
  inputs."trayx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trayx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progetto-v0_1_0".dir   = "v0_1_0";
  inputs."progetto-v0_1_0".owner = "nim-nix-pkgs";
  inputs."progetto-v0_1_0".ref   = "master";
  inputs."progetto-v0_1_0".repo  = "progetto";
  inputs."progetto-v0_1_0".type  = "github";
  inputs."progetto-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progetto-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trayx-v0_2_0".dir   = "v0_2_0";
  inputs."trayx-v0_2_0".owner = "nim-nix-pkgs";
  inputs."trayx-v0_2_0".ref   = "master";
  inputs."trayx-v0_2_0".repo  = "trayx";
  inputs."trayx-v0_2_0".type  = "github";
  inputs."trayx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trayx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trayx-v1_0_0".dir   = "v1_0_0";
  inputs."trayx-v1_0_0".owner = "nim-nix-pkgs";
  inputs."trayx-v1_0_0".ref   = "master";
  inputs."trayx-v1_0_0".repo  = "trayx";
  inputs."trayx-v1_0_0".type  = "github";
  inputs."trayx-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trayx-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trayx-v1_0_1".dir   = "v1_0_1";
  inputs."trayx-v1_0_1".owner = "nim-nix-pkgs";
  inputs."trayx-v1_0_1".ref   = "master";
  inputs."trayx-v1_0_1".repo  = "trayx";
  inputs."trayx-v1_0_1".type  = "github";
  inputs."trayx-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trayx-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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