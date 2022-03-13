{
  description = ''Nim barcode library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."barcode-master".dir   = "master";
  inputs."barcode-master".owner = "nim-nix-pkgs";
  inputs."barcode-master".ref   = "master";
  inputs."barcode-master".repo  = "barcode";
  inputs."barcode-master".type  = "github";
  inputs."barcode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."barcode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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