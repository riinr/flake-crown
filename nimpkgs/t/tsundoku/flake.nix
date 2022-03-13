{
  description = ''Simple and lightweight OPDS ebook server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tsundoku-master".dir   = "master";
  inputs."tsundoku-master".owner = "nim-nix-pkgs";
  inputs."tsundoku-master".ref   = "master";
  inputs."tsundoku-master".repo  = "tsundoku";
  inputs."tsundoku-master".type  = "github";
  inputs."tsundoku-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tsundoku-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tsundoku-v0_1_0".dir   = "v0_1_0";
  inputs."tsundoku-v0_1_0".owner = "nim-nix-pkgs";
  inputs."tsundoku-v0_1_0".ref   = "master";
  inputs."tsundoku-v0_1_0".repo  = "tsundoku";
  inputs."tsundoku-v0_1_0".type  = "github";
  inputs."tsundoku-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tsundoku-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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