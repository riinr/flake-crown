{
  description = ''OpenDocument Spreadhseet reader'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."odsreader-master".dir   = "master";
  inputs."odsreader-master".owner = "nim-nix-pkgs";
  inputs."odsreader-master".ref   = "master";
  inputs."odsreader-master".repo  = "odsreader";
  inputs."odsreader-master".type  = "github";
  inputs."odsreader-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."odsreader-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."odsreader-v0_1_0".dir   = "v0_1_0";
  inputs."odsreader-v0_1_0".owner = "nim-nix-pkgs";
  inputs."odsreader-v0_1_0".ref   = "master";
  inputs."odsreader-v0_1_0".repo  = "odsreader";
  inputs."odsreader-v0_1_0".type  = "github";
  inputs."odsreader-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."odsreader-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."odsreader-v0_2_0".dir   = "v0_2_0";
  inputs."odsreader-v0_2_0".owner = "nim-nix-pkgs";
  inputs."odsreader-v0_2_0".ref   = "master";
  inputs."odsreader-v0_2_0".repo  = "odsreader";
  inputs."odsreader-v0_2_0".type  = "github";
  inputs."odsreader-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."odsreader-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."odsreader-v0_3_0".dir   = "v0_3_0";
  inputs."odsreader-v0_3_0".owner = "nim-nix-pkgs";
  inputs."odsreader-v0_3_0".ref   = "master";
  inputs."odsreader-v0_3_0".repo  = "odsreader";
  inputs."odsreader-v0_3_0".type  = "github";
  inputs."odsreader-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."odsreader-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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