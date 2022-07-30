{
  description = ''Graphs in nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grim-devel".dir   = "devel";
  inputs."grim-devel".owner = "nim-nix-pkgs";
  inputs."grim-devel".ref   = "master";
  inputs."grim-devel".repo  = "grim";
  inputs."grim-devel".type  = "github";
  inputs."grim-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-master".dir   = "master";
  inputs."grim-master".owner = "nim-nix-pkgs";
  inputs."grim-master".ref   = "master";
  inputs."grim-master".repo  = "grim";
  inputs."grim-master".type  = "github";
  inputs."grim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_1_0".dir   = "v_0_1_0";
  inputs."grim-v_0_1_0".owner = "nim-nix-pkgs";
  inputs."grim-v_0_1_0".ref   = "master";
  inputs."grim-v_0_1_0".repo  = "grim";
  inputs."grim-v_0_1_0".type  = "github";
  inputs."grim-v_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_1_1".dir   = "v_0_1_1";
  inputs."grim-v_0_1_1".owner = "nim-nix-pkgs";
  inputs."grim-v_0_1_1".ref   = "master";
  inputs."grim-v_0_1_1".repo  = "grim";
  inputs."grim-v_0_1_1".type  = "github";
  inputs."grim-v_0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_2_0".dir   = "v_0_2_0";
  inputs."grim-v_0_2_0".owner = "nim-nix-pkgs";
  inputs."grim-v_0_2_0".ref   = "master";
  inputs."grim-v_0_2_0".repo  = "grim";
  inputs."grim-v_0_2_0".type  = "github";
  inputs."grim-v_0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v0_3_0".dir   = "v0_3_0";
  inputs."grim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."grim-v0_3_0".ref   = "master";
  inputs."grim-v0_3_0".repo  = "grim";
  inputs."grim-v0_3_0".type  = "github";
  inputs."grim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v0_3_1".dir   = "v0_3_1";
  inputs."grim-v0_3_1".owner = "nim-nix-pkgs";
  inputs."grim-v0_3_1".ref   = "master";
  inputs."grim-v0_3_1".repo  = "grim";
  inputs."grim-v0_3_1".type  = "github";
  inputs."grim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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