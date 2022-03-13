{
  description = ''Simple library to draw stuff on a window'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."drawim-master".dir   = "master";
  inputs."drawim-master".owner = "nim-nix-pkgs";
  inputs."drawim-master".ref   = "master";
  inputs."drawim-master".repo  = "drawim";
  inputs."drawim-master".type  = "github";
  inputs."drawim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drawim-0_1_0".dir   = "0_1_0";
  inputs."drawim-0_1_0".owner = "nim-nix-pkgs";
  inputs."drawim-0_1_0".ref   = "master";
  inputs."drawim-0_1_0".repo  = "drawim";
  inputs."drawim-0_1_0".type  = "github";
  inputs."drawim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drawim-0_1_1".dir   = "0_1_1";
  inputs."drawim-0_1_1".owner = "nim-nix-pkgs";
  inputs."drawim-0_1_1".ref   = "master";
  inputs."drawim-0_1_1".repo  = "drawim";
  inputs."drawim-0_1_1".type  = "github";
  inputs."drawim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drawim-0_1_2".dir   = "0_1_2";
  inputs."drawim-0_1_2".owner = "nim-nix-pkgs";
  inputs."drawim-0_1_2".ref   = "master";
  inputs."drawim-0_1_2".repo  = "drawim";
  inputs."drawim-0_1_2".type  = "github";
  inputs."drawim-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawim-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drawim-0_1_3".dir   = "0_1_3";
  inputs."drawim-0_1_3".owner = "nim-nix-pkgs";
  inputs."drawim-0_1_3".ref   = "master";
  inputs."drawim-0_1_3".repo  = "drawim";
  inputs."drawim-0_1_3".type  = "github";
  inputs."drawim-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawim-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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