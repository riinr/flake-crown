{
  description = ''Secure multi-party computation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpc-master".dir   = "master";
  inputs."nimpc-master".owner = "nim-nix-pkgs";
  inputs."nimpc-master".ref   = "master";
  inputs."nimpc-master".repo  = "nimpc";
  inputs."nimpc-master".type  = "github";
  inputs."nimpc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpc-v0_1_0".dir   = "v0_1_0";
  inputs."nimpc-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimpc-v0_1_0".ref   = "master";
  inputs."nimpc-v0_1_0".repo  = "nimpc";
  inputs."nimpc-v0_1_0".type  = "github";
  inputs."nimpc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpc-v0_2_0".dir   = "v0_2_0";
  inputs."nimpc-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimpc-v0_2_0".ref   = "master";
  inputs."nimpc-v0_2_0".repo  = "nimpc";
  inputs."nimpc-v0_2_0".type  = "github";
  inputs."nimpc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpc-v0_3_0".dir   = "v0_3_0";
  inputs."nimpc-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimpc-v0_3_0".ref   = "master";
  inputs."nimpc-v0_3_0".repo  = "nimpc";
  inputs."nimpc-v0_3_0".type  = "github";
  inputs."nimpc-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpc-v0_4_0".dir   = "v0_4_0";
  inputs."nimpc-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimpc-v0_4_0".ref   = "master";
  inputs."nimpc-v0_4_0".repo  = "nimpc";
  inputs."nimpc-v0_4_0".type  = "github";
  inputs."nimpc-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpc-v0_4_1".dir   = "v0_4_1";
  inputs."nimpc-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimpc-v0_4_1".ref   = "master";
  inputs."nimpc-v0_4_1".repo  = "nimpc";
  inputs."nimpc-v0_4_1".type  = "github";
  inputs."nimpc-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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