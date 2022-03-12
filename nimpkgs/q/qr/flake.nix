{
  description = ''Create SVG-files with QR-codes from strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qr-master".url = "path:./master";
  inputs."qr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_0_0".url = "path:./v1_0_0";
  inputs."qr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_2_0".url = "path:./v1_2_0";
  inputs."qr-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_3_0".url = "path:./v1_3_0";
  inputs."qr-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qr-v1_3_1".url = "path:./v1_3_1";
  inputs."qr-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qr-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}