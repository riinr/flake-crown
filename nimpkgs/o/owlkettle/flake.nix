{
  description = ''A declarative user interface framework based on GTK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."owlkettle-main".dir   = "main";
  inputs."owlkettle-main".owner = "nim-nix-pkgs";
  inputs."owlkettle-main".ref   = "master";
  inputs."owlkettle-main".repo  = "owlkettle";
  inputs."owlkettle-main".type  = "github";
  inputs."owlkettle-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v_1_4_0".dir   = "v_1_4_0";
  inputs."owlkettle-v_1_4_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v_1_4_0".ref   = "master";
  inputs."owlkettle-v_1_4_0".repo  = "owlkettle";
  inputs."owlkettle-v_1_4_0".type  = "github";
  inputs."owlkettle-v_1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v_1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v1_0_0".dir   = "v1_0_0";
  inputs."owlkettle-v1_0_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v1_0_0".ref   = "master";
  inputs."owlkettle-v1_0_0".repo  = "owlkettle";
  inputs."owlkettle-v1_0_0".type  = "github";
  inputs."owlkettle-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v1_1_0".dir   = "v1_1_0";
  inputs."owlkettle-v1_1_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v1_1_0".ref   = "master";
  inputs."owlkettle-v1_1_0".repo  = "owlkettle";
  inputs."owlkettle-v1_1_0".type  = "github";
  inputs."owlkettle-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v1_2_0".dir   = "v1_2_0";
  inputs."owlkettle-v1_2_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v1_2_0".ref   = "master";
  inputs."owlkettle-v1_2_0".repo  = "owlkettle";
  inputs."owlkettle-v1_2_0".type  = "github";
  inputs."owlkettle-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v1_3_0".dir   = "v1_3_0";
  inputs."owlkettle-v1_3_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v1_3_0".ref   = "master";
  inputs."owlkettle-v1_3_0".repo  = "owlkettle";
  inputs."owlkettle-v1_3_0".type  = "github";
  inputs."owlkettle-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."owlkettle-v1_5_0".dir   = "v1_5_0";
  inputs."owlkettle-v1_5_0".owner = "nim-nix-pkgs";
  inputs."owlkettle-v1_5_0".ref   = "master";
  inputs."owlkettle-v1_5_0".repo  = "owlkettle";
  inputs."owlkettle-v1_5_0".type  = "github";
  inputs."owlkettle-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owlkettle-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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