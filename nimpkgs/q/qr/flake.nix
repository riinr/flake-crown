{
  description = ''Create SVG-files with QR-codes from strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qr-master".dir   = "master";
  inputs."qr-master".owner = "nim-nix-pkgs";
  inputs."qr-master".ref   = "master";
  inputs."qr-master".repo  = "qr";
  inputs."qr-master".type  = "github";
  inputs."qr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_0_0".dir   = "v1_0_0";
  inputs."qr-v1_0_0".owner = "nim-nix-pkgs";
  inputs."qr-v1_0_0".ref   = "master";
  inputs."qr-v1_0_0".repo  = "qr";
  inputs."qr-v1_0_0".type  = "github";
  inputs."qr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_2_0".dir   = "v1_2_0";
  inputs."qr-v1_2_0".owner = "nim-nix-pkgs";
  inputs."qr-v1_2_0".ref   = "master";
  inputs."qr-v1_2_0".repo  = "qr";
  inputs."qr-v1_2_0".type  = "github";
  inputs."qr-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_3_0".dir   = "v1_3_0";
  inputs."qr-v1_3_0".owner = "nim-nix-pkgs";
  inputs."qr-v1_3_0".ref   = "master";
  inputs."qr-v1_3_0".repo  = "qr";
  inputs."qr-v1_3_0".type  = "github";
  inputs."qr-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_3_1".dir   = "v1_3_1";
  inputs."qr-v1_3_1".owner = "nim-nix-pkgs";
  inputs."qr-v1_3_1".ref   = "master";
  inputs."qr-v1_3_1".repo  = "qr";
  inputs."qr-v1_3_1".type  = "github";
  inputs."qr-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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