{
  description = ''UI building with Gnome's Glade'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uibuilder-master".dir   = "master";
  inputs."uibuilder-master".owner = "nim-nix-pkgs";
  inputs."uibuilder-master".ref   = "master";
  inputs."uibuilder-master".repo  = "uibuilder";
  inputs."uibuilder-master".type  = "github";
  inputs."uibuilder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_1_0".dir   = "0_1_0";
  inputs."uibuilder-0_1_0".owner = "nim-nix-pkgs";
  inputs."uibuilder-0_1_0".ref   = "master";
  inputs."uibuilder-0_1_0".repo  = "uibuilder";
  inputs."uibuilder-0_1_0".type  = "github";
  inputs."uibuilder-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_1_1".dir   = "0_1_1";
  inputs."uibuilder-0_1_1".owner = "nim-nix-pkgs";
  inputs."uibuilder-0_1_1".ref   = "master";
  inputs."uibuilder-0_1_1".repo  = "uibuilder";
  inputs."uibuilder-0_1_1".type  = "github";
  inputs."uibuilder-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_2_0".dir   = "0_2_0";
  inputs."uibuilder-0_2_0".owner = "nim-nix-pkgs";
  inputs."uibuilder-0_2_0".ref   = "master";
  inputs."uibuilder-0_2_0".repo  = "uibuilder";
  inputs."uibuilder-0_2_0".type  = "github";
  inputs."uibuilder-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_2_1".dir   = "0_2_1";
  inputs."uibuilder-0_2_1".owner = "nim-nix-pkgs";
  inputs."uibuilder-0_2_1".ref   = "master";
  inputs."uibuilder-0_2_1".repo  = "uibuilder";
  inputs."uibuilder-0_2_1".type  = "github";
  inputs."uibuilder-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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