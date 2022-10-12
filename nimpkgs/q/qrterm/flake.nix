{
  description = ''A simple QR generator in your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qrterm-main".dir   = "main";
  inputs."qrterm-main".owner = "nim-nix-pkgs";
  inputs."qrterm-main".ref   = "master";
  inputs."qrterm-main".repo  = "qrterm";
  inputs."qrterm-main".type  = "github";
  inputs."qrterm-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrterm-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qrterm-v1_0_0".dir   = "v1_0_0";
  inputs."qrterm-v1_0_0".owner = "nim-nix-pkgs";
  inputs."qrterm-v1_0_0".ref   = "master";
  inputs."qrterm-v1_0_0".repo  = "qrterm";
  inputs."qrterm-v1_0_0".type  = "github";
  inputs."qrterm-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrterm-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qrterm-v1_0_1".dir   = "v1_0_1";
  inputs."qrterm-v1_0_1".owner = "nim-nix-pkgs";
  inputs."qrterm-v1_0_1".ref   = "master";
  inputs."qrterm-v1_0_1".repo  = "qrterm";
  inputs."qrterm-v1_0_1".type  = "github";
  inputs."qrterm-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrterm-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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