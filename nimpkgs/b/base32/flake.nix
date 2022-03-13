{
  description = ''Base32 library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."base32-master".dir   = "master";
  inputs."base32-master".owner = "nim-nix-pkgs";
  inputs."base32-master".ref   = "master";
  inputs."base32-master".repo  = "base32";
  inputs."base32-master".type  = "github";
  inputs."base32-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base32-0_1_2".dir   = "0_1_2";
  inputs."base32-0_1_2".owner = "nim-nix-pkgs";
  inputs."base32-0_1_2".ref   = "master";
  inputs."base32-0_1_2".repo  = "base32";
  inputs."base32-0_1_2".type  = "github";
  inputs."base32-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base32-0_1_3".dir   = "0_1_3";
  inputs."base32-0_1_3".owner = "nim-nix-pkgs";
  inputs."base32-0_1_3".ref   = "master";
  inputs."base32-0_1_3".repo  = "base32";
  inputs."base32-0_1_3".type  = "github";
  inputs."base32-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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