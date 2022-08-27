{
  description = ''Nim wrapper around the ngtcp2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ngtcp2-main".dir   = "main";
  inputs."ngtcp2-main".owner = "nim-nix-pkgs";
  inputs."ngtcp2-main".ref   = "master";
  inputs."ngtcp2-main".repo  = "ngtcp2";
  inputs."ngtcp2-main".type  = "github";
  inputs."ngtcp2-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ngtcp2-0_32_0".dir   = "0_32_0";
  inputs."ngtcp2-0_32_0".owner = "nim-nix-pkgs";
  inputs."ngtcp2-0_32_0".ref   = "master";
  inputs."ngtcp2-0_32_0".repo  = "ngtcp2";
  inputs."ngtcp2-0_32_0".type  = "github";
  inputs."ngtcp2-0_32_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-0_32_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ngtcp2-0_33_0".dir   = "0_33_0";
  inputs."ngtcp2-0_33_0".owner = "nim-nix-pkgs";
  inputs."ngtcp2-0_33_0".ref   = "master";
  inputs."ngtcp2-0_33_0".repo  = "ngtcp2";
  inputs."ngtcp2-0_33_0".type  = "github";
  inputs."ngtcp2-0_33_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-0_33_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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