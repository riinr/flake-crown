{
  description = ''utf-8 string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ustring-master".dir   = "master";
  inputs."ustring-master".owner = "nim-nix-pkgs";
  inputs."ustring-master".ref   = "master";
  inputs."ustring-master".repo  = "ustring";
  inputs."ustring-master".type  = "github";
  inputs."ustring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_1".dir   = "0_2_1";
  inputs."ustring-0_2_1".owner = "nim-nix-pkgs";
  inputs."ustring-0_2_1".ref   = "master";
  inputs."ustring-0_2_1".repo  = "ustring";
  inputs."ustring-0_2_1".type  = "github";
  inputs."ustring-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_2".dir   = "0_2_2";
  inputs."ustring-0_2_2".owner = "nim-nix-pkgs";
  inputs."ustring-0_2_2".ref   = "master";
  inputs."ustring-0_2_2".repo  = "ustring";
  inputs."ustring-0_2_2".type  = "github";
  inputs."ustring-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_3".dir   = "0_2_3";
  inputs."ustring-0_2_3".owner = "nim-nix-pkgs";
  inputs."ustring-0_2_3".ref   = "master";
  inputs."ustring-0_2_3".repo  = "ustring";
  inputs."ustring-0_2_3".type  = "github";
  inputs."ustring-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_3_0".dir   = "0_3_0";
  inputs."ustring-0_3_0".owner = "nim-nix-pkgs";
  inputs."ustring-0_3_0".ref   = "master";
  inputs."ustring-0_3_0".repo  = "ustring";
  inputs."ustring-0_3_0".type  = "github";
  inputs."ustring-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-3_0_0".dir   = "3_0_0";
  inputs."ustring-3_0_0".owner = "nim-nix-pkgs";
  inputs."ustring-3_0_0".ref   = "master";
  inputs."ustring-3_0_0".repo  = "ustring";
  inputs."ustring-3_0_0".type  = "github";
  inputs."ustring-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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