{
  description = ''Nim's Windows API and COM Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winim-master".dir   = "master";
  inputs."winim-master".owner = "nim-nix-pkgs";
  inputs."winim-master".ref   = "master";
  inputs."winim-master".repo  = "winim";
  inputs."winim-master".type  = "github";
  inputs."winim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_6_0".dir   = "3_6_0";
  inputs."winim-3_6_0".owner = "nim-nix-pkgs";
  inputs."winim-3_6_0".ref   = "master";
  inputs."winim-3_6_0".repo  = "winim";
  inputs."winim-3_6_0".type  = "github";
  inputs."winim-3_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_6_1".dir   = "3_6_1";
  inputs."winim-3_6_1".owner = "nim-nix-pkgs";
  inputs."winim-3_6_1".ref   = "master";
  inputs."winim-3_6_1".repo  = "winim";
  inputs."winim-3_6_1".type  = "github";
  inputs."winim-3_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_0".dir   = "3_7_0";
  inputs."winim-3_7_0".owner = "nim-nix-pkgs";
  inputs."winim-3_7_0".ref   = "master";
  inputs."winim-3_7_0".repo  = "winim";
  inputs."winim-3_7_0".type  = "github";
  inputs."winim-3_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_1".dir   = "3_7_1";
  inputs."winim-3_7_1".owner = "nim-nix-pkgs";
  inputs."winim-3_7_1".ref   = "master";
  inputs."winim-3_7_1".repo  = "winim";
  inputs."winim-3_7_1".type  = "github";
  inputs."winim-3_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_2".dir   = "3_7_2";
  inputs."winim-3_7_2".owner = "nim-nix-pkgs";
  inputs."winim-3_7_2".ref   = "master";
  inputs."winim-3_7_2".repo  = "winim";
  inputs."winim-3_7_2".type  = "github";
  inputs."winim-3_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_8_0".dir   = "3_8_0";
  inputs."winim-3_8_0".owner = "nim-nix-pkgs";
  inputs."winim-3_8_0".ref   = "master";
  inputs."winim-3_8_0".repo  = "winim";
  inputs."winim-3_8_0".type  = "github";
  inputs."winim-3_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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