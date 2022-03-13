{
  description = ''monocypher wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimmonocypher-master".dir   = "master";
  inputs."nimmonocypher-master".owner = "nim-nix-pkgs";
  inputs."nimmonocypher-master".ref   = "master";
  inputs."nimmonocypher-master".repo  = "nimmonocypher";
  inputs."nimmonocypher-master".type  = "github";
  inputs."nimmonocypher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmonocypher-v0_1_1".dir   = "v0_1_1";
  inputs."nimmonocypher-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimmonocypher-v0_1_1".ref   = "master";
  inputs."nimmonocypher-v0_1_1".repo  = "nimmonocypher";
  inputs."nimmonocypher-v0_1_1".type  = "github";
  inputs."nimmonocypher-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmonocypher-v0_1_2".dir   = "v0_1_2";
  inputs."nimmonocypher-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimmonocypher-v0_1_2".ref   = "master";
  inputs."nimmonocypher-v0_1_2".repo  = "nimmonocypher";
  inputs."nimmonocypher-v0_1_2".type  = "github";
  inputs."nimmonocypher-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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