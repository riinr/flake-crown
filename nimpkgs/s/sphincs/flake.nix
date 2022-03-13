{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sphincs-master".dir   = "master";
  inputs."sphincs-master".owner = "nim-nix-pkgs";
  inputs."sphincs-master".ref   = "master";
  inputs."sphincs-master".repo  = "sphincs";
  inputs."sphincs-master".type  = "github";
  inputs."sphincs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sphincs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sphincs-v0_1_0".dir   = "v0_1_0";
  inputs."sphincs-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sphincs-v0_1_0".ref   = "master";
  inputs."sphincs-v0_1_0".repo  = "sphincs";
  inputs."sphincs-v0_1_0".type  = "github";
  inputs."sphincs-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sphincs-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sphincs-v0_1_1".dir   = "v0_1_1";
  inputs."sphincs-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sphincs-v0_1_1".ref   = "master";
  inputs."sphincs-v0_1_1".repo  = "sphincs";
  inputs."sphincs-v0_1_1".type  = "github";
  inputs."sphincs-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sphincs-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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