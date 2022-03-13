{
  description = ''Nim module/thread initialisation ordering library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moduleinit-master".dir   = "master";
  inputs."moduleinit-master".owner = "nim-nix-pkgs";
  inputs."moduleinit-master".ref   = "master";
  inputs."moduleinit-master".repo  = "moduleinit";
  inputs."moduleinit-master".type  = "github";
  inputs."moduleinit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_1_0".dir   = "v0_1_0";
  inputs."moduleinit-v0_1_0".owner = "nim-nix-pkgs";
  inputs."moduleinit-v0_1_0".ref   = "master";
  inputs."moduleinit-v0_1_0".repo  = "moduleinit";
  inputs."moduleinit-v0_1_0".type  = "github";
  inputs."moduleinit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_2_0".dir   = "v0_2_0";
  inputs."moduleinit-v0_2_0".owner = "nim-nix-pkgs";
  inputs."moduleinit-v0_2_0".ref   = "master";
  inputs."moduleinit-v0_2_0".repo  = "moduleinit";
  inputs."moduleinit-v0_2_0".type  = "github";
  inputs."moduleinit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_3_0".dir   = "v0_3_0";
  inputs."moduleinit-v0_3_0".owner = "nim-nix-pkgs";
  inputs."moduleinit-v0_3_0".ref   = "master";
  inputs."moduleinit-v0_3_0".repo  = "moduleinit";
  inputs."moduleinit-v0_3_0".type  = "github";
  inputs."moduleinit-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moduleinit-v0_4_0".dir   = "v0_4_0";
  inputs."moduleinit-v0_4_0".owner = "nim-nix-pkgs";
  inputs."moduleinit-v0_4_0".ref   = "master";
  inputs."moduleinit-v0_4_0".repo  = "moduleinit";
  inputs."moduleinit-v0_4_0".type  = "github";
  inputs."moduleinit-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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