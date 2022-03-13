{
  description = ''Create memorable sentences from byte sequences.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mnemonic-master".dir   = "master";
  inputs."mnemonic-master".owner = "nim-nix-pkgs";
  inputs."mnemonic-master".ref   = "master";
  inputs."mnemonic-master".repo  = "mnemonic";
  inputs."mnemonic-master".type  = "github";
  inputs."mnemonic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mnemonic-v0_1_0".dir   = "v0_1_0";
  inputs."mnemonic-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mnemonic-v0_1_0".ref   = "master";
  inputs."mnemonic-v0_1_0".repo  = "mnemonic";
  inputs."mnemonic-v0_1_0".type  = "github";
  inputs."mnemonic-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mnemonic-v0_1_1".dir   = "v0_1_1";
  inputs."mnemonic-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mnemonic-v0_1_1".ref   = "master";
  inputs."mnemonic-v0_1_1".repo  = "mnemonic";
  inputs."mnemonic-v0_1_1".type  = "github";
  inputs."mnemonic-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mnemonic-v0_1_2".dir   = "v0_1_2";
  inputs."mnemonic-v0_1_2".owner = "nim-nix-pkgs";
  inputs."mnemonic-v0_1_2".ref   = "master";
  inputs."mnemonic-v0_1_2".repo  = "mnemonic";
  inputs."mnemonic-v0_1_2".type  = "github";
  inputs."mnemonic-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mnemonic-v0_1_3".dir   = "v0_1_3";
  inputs."mnemonic-v0_1_3".owner = "nim-nix-pkgs";
  inputs."mnemonic-v0_1_3".ref   = "master";
  inputs."mnemonic-v0_1_3".repo  = "mnemonic";
  inputs."mnemonic-v0_1_3".type  = "github";
  inputs."mnemonic-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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