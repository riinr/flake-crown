{
  description = ''apt for SHARP Brain'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."apt_brain-main".dir   = "main";
  inputs."apt_brain-main".owner = "nim-nix-pkgs";
  inputs."apt_brain-main".ref   = "master";
  inputs."apt_brain-main".repo  = "apt_brain";
  inputs."apt_brain-main".type  = "github";
  inputs."apt_brain-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-0_2_2".dir   = "0_2_2";
  inputs."apt_brain-0_2_2".owner = "nim-nix-pkgs";
  inputs."apt_brain-0_2_2".ref   = "master";
  inputs."apt_brain-0_2_2".repo  = "apt_brain";
  inputs."apt_brain-0_2_2".type  = "github";
  inputs."apt_brain-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-0_2_3".dir   = "0_2_3";
  inputs."apt_brain-0_2_3".owner = "nim-nix-pkgs";
  inputs."apt_brain-0_2_3".ref   = "master";
  inputs."apt_brain-0_2_3".repo  = "apt_brain";
  inputs."apt_brain-0_2_3".type  = "github";
  inputs."apt_brain-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-0_2_4".dir   = "0_2_4";
  inputs."apt_brain-0_2_4".owner = "nim-nix-pkgs";
  inputs."apt_brain-0_2_4".ref   = "master";
  inputs."apt_brain-0_2_4".repo  = "apt_brain";
  inputs."apt_brain-0_2_4".type  = "github";
  inputs."apt_brain-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-BETAv1_0".dir   = "BETAv1_0";
  inputs."apt_brain-BETAv1_0".owner = "nim-nix-pkgs";
  inputs."apt_brain-BETAv1_0".ref   = "master";
  inputs."apt_brain-BETAv1_0".repo  = "apt_brain";
  inputs."apt_brain-BETAv1_0".type  = "github";
  inputs."apt_brain-BETAv1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-BETAv1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-BETAv1_1".dir   = "BETAv1_1";
  inputs."apt_brain-BETAv1_1".owner = "nim-nix-pkgs";
  inputs."apt_brain-BETAv1_1".ref   = "master";
  inputs."apt_brain-BETAv1_1".repo  = "apt_brain";
  inputs."apt_brain-BETAv1_1".type  = "github";
  inputs."apt_brain-BETAv1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-BETAv1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-BETAv2_0".dir   = "BETAv2_0";
  inputs."apt_brain-BETAv2_0".owner = "nim-nix-pkgs";
  inputs."apt_brain-BETAv2_0".ref   = "master";
  inputs."apt_brain-BETAv2_0".repo  = "apt_brain";
  inputs."apt_brain-BETAv2_0".type  = "github";
  inputs."apt_brain-BETAv2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-BETAv2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."apt_brain-BETAv2_1".dir   = "BETAv2_1";
  inputs."apt_brain-BETAv2_1".owner = "nim-nix-pkgs";
  inputs."apt_brain-BETAv2_1".ref   = "master";
  inputs."apt_brain-BETAv2_1".repo  = "apt_brain";
  inputs."apt_brain-BETAv2_1".type  = "github";
  inputs."apt_brain-BETAv2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."apt_brain-BETAv2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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