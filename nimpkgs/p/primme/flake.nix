{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."primme-master".dir   = "master";
  inputs."primme-master".owner = "nim-nix-pkgs";
  inputs."primme-master".ref   = "master";
  inputs."primme-master".repo  = "primme";
  inputs."primme-master".type  = "github";
  inputs."primme-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_0_0".dir   = "v0_0_0";
  inputs."primme-v0_0_0".owner = "nim-nix-pkgs";
  inputs."primme-v0_0_0".ref   = "master";
  inputs."primme-v0_0_0".repo  = "primme";
  inputs."primme-v0_0_0".type  = "github";
  inputs."primme-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_1_0".dir   = "v0_1_0";
  inputs."primme-v0_1_0".owner = "nim-nix-pkgs";
  inputs."primme-v0_1_0".ref   = "master";
  inputs."primme-v0_1_0".repo  = "primme";
  inputs."primme-v0_1_0".type  = "github";
  inputs."primme-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_1_1".dir   = "v0_1_1";
  inputs."primme-v0_1_1".owner = "nim-nix-pkgs";
  inputs."primme-v0_1_1".ref   = "master";
  inputs."primme-v0_1_1".repo  = "primme";
  inputs."primme-v0_1_1".type  = "github";
  inputs."primme-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_0_0".dir   = "v2_0_0";
  inputs."primme-v2_0_0".owner = "nim-nix-pkgs";
  inputs."primme-v2_0_0".ref   = "master";
  inputs."primme-v2_0_0".repo  = "primme";
  inputs."primme-v2_0_0".type  = "github";
  inputs."primme-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_1_0".dir   = "v2_1_0";
  inputs."primme-v2_1_0".owner = "nim-nix-pkgs";
  inputs."primme-v2_1_0".ref   = "master";
  inputs."primme-v2_1_0".repo  = "primme";
  inputs."primme-v2_1_0".type  = "github";
  inputs."primme-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_1_1".dir   = "v2_1_1";
  inputs."primme-v2_1_1".owner = "nim-nix-pkgs";
  inputs."primme-v2_1_1".ref   = "master";
  inputs."primme-v2_1_1".repo  = "primme";
  inputs."primme-v2_1_1".type  = "github";
  inputs."primme-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v3_0_0".dir   = "v3_0_0";
  inputs."primme-v3_0_0".owner = "nim-nix-pkgs";
  inputs."primme-v3_0_0".ref   = "master";
  inputs."primme-v3_0_0".repo  = "primme";
  inputs."primme-v3_0_0".type  = "github";
  inputs."primme-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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