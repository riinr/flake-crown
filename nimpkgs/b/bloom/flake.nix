{
  description = ''Efficient Bloom filter implementation in Nim using MurmurHash3.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bloom-master".dir   = "master";
  inputs."bloom-master".owner = "nim-nix-pkgs";
  inputs."bloom-master".ref   = "master";
  inputs."bloom-master".repo  = "bloom";
  inputs."bloom-master".type  = "github";
  inputs."bloom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bloom-v0_1_0".dir   = "v0_1_0";
  inputs."bloom-v0_1_0".owner = "nim-nix-pkgs";
  inputs."bloom-v0_1_0".ref   = "master";
  inputs."bloom-v0_1_0".repo  = "bloom";
  inputs."bloom-v0_1_0".type  = "github";
  inputs."bloom-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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