{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."base58-master".dir   = "master";
  inputs."base58-master".owner = "nim-nix-pkgs";
  inputs."base58-master".ref   = "master";
  inputs."base58-master".repo  = "base58";
  inputs."base58-master".type  = "github";
  inputs."base58-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base58-v0_1_0".dir   = "v0_1_0";
  inputs."base58-v0_1_0".owner = "nim-nix-pkgs";
  inputs."base58-v0_1_0".ref   = "master";
  inputs."base58-v0_1_0".repo  = "base58";
  inputs."base58-v0_1_0".type  = "github";
  inputs."base58-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."base58-v0_1_1".dir   = "v0_1_1";
  inputs."base58-v0_1_1".owner = "nim-nix-pkgs";
  inputs."base58-v0_1_1".ref   = "master";
  inputs."base58-v0_1_1".repo  = "base58";
  inputs."base58-v0_1_1".type  = "github";
  inputs."base58-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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