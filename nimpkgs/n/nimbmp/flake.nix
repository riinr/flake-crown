{
  description = ''BMP encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbmp-master".dir   = "master";
  inputs."nimbmp-master".owner = "nim-nix-pkgs";
  inputs."nimbmp-master".ref   = "master";
  inputs."nimbmp-master".repo  = "nimbmp";
  inputs."nimbmp-master".type  = "github";
  inputs."nimbmp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_6".dir   = "v0_1_6";
  inputs."nimbmp-v0_1_6".owner = "nim-nix-pkgs";
  inputs."nimbmp-v0_1_6".ref   = "master";
  inputs."nimbmp-v0_1_6".repo  = "nimbmp";
  inputs."nimbmp-v0_1_6".type  = "github";
  inputs."nimbmp-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_7".dir   = "v0_1_7";
  inputs."nimbmp-v0_1_7".owner = "nim-nix-pkgs";
  inputs."nimbmp-v0_1_7".ref   = "master";
  inputs."nimbmp-v0_1_7".repo  = "nimbmp";
  inputs."nimbmp-v0_1_7".type  = "github";
  inputs."nimbmp-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_8".dir   = "v0_1_8";
  inputs."nimbmp-v0_1_8".owner = "nim-nix-pkgs";
  inputs."nimbmp-v0_1_8".ref   = "master";
  inputs."nimbmp-v0_1_8".repo  = "nimbmp";
  inputs."nimbmp-v0_1_8".type  = "github";
  inputs."nimbmp-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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