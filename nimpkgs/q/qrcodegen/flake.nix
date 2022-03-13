{
  description = ''QR Code Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qrcodegen-master".dir   = "master";
  inputs."qrcodegen-master".owner = "nim-nix-pkgs";
  inputs."qrcodegen-master".ref   = "master";
  inputs."qrcodegen-master".repo  = "qrcodegen";
  inputs."qrcodegen-master".type  = "github";
  inputs."qrcodegen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrcodegen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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