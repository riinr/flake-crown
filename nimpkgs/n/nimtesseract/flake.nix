{
  description = ''A wrapper to Tesseract OCR library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtesseract-master".dir   = "master";
  inputs."nimtesseract-master".owner = "nim-nix-pkgs";
  inputs."nimtesseract-master".ref   = "master";
  inputs."nimtesseract-master".repo  = "nimtesseract";
  inputs."nimtesseract-master".type  = "github";
  inputs."nimtesseract-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtesseract-v0_1_0".dir   = "v0_1_0";
  inputs."nimtesseract-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimtesseract-v0_1_0".ref   = "master";
  inputs."nimtesseract-v0_1_0".repo  = "nimtesseract";
  inputs."nimtesseract-v0_1_0".type  = "github";
  inputs."nimtesseract-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtesseract-v0_2_0".dir   = "v0_2_0";
  inputs."nimtesseract-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimtesseract-v0_2_0".ref   = "master";
  inputs."nimtesseract-v0_2_0".repo  = "nimtesseract";
  inputs."nimtesseract-v0_2_0".type  = "github";
  inputs."nimtesseract-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtesseract-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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