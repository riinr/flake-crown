{
  description = ''eastasianwidth is library for EastAsianWidth.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eastasianwidth-master".dir   = "master";
  inputs."eastasianwidth-master".owner = "nim-nix-pkgs";
  inputs."eastasianwidth-master".ref   = "master";
  inputs."eastasianwidth-master".repo  = "eastasianwidth";
  inputs."eastasianwidth-master".type  = "github";
  inputs."eastasianwidth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eastasianwidth-1_1_0".dir   = "1_1_0";
  inputs."eastasianwidth-1_1_0".owner = "nim-nix-pkgs";
  inputs."eastasianwidth-1_1_0".ref   = "master";
  inputs."eastasianwidth-1_1_0".repo  = "eastasianwidth";
  inputs."eastasianwidth-1_1_0".type  = "github";
  inputs."eastasianwidth-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eastasianwidth-v0_1_0".dir   = "v0_1_0";
  inputs."eastasianwidth-v0_1_0".owner = "nim-nix-pkgs";
  inputs."eastasianwidth-v0_1_0".ref   = "master";
  inputs."eastasianwidth-v0_1_0".repo  = "eastasianwidth";
  inputs."eastasianwidth-v0_1_0".type  = "github";
  inputs."eastasianwidth-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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