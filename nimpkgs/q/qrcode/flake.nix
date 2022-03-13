{
  description = ''module for creating and reading QR codes using http://goqr.me/'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qrcode-master".dir   = "master";
  inputs."qrcode-master".owner = "nim-nix-pkgs";
  inputs."qrcode-master".ref   = "master";
  inputs."qrcode-master".repo  = "qrcode";
  inputs."qrcode-master".type  = "github";
  inputs."qrcode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrcode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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