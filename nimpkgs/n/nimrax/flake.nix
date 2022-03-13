{
  description = ''Radix tree wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrax-master".dir   = "master";
  inputs."nimrax-master".owner = "nim-nix-pkgs";
  inputs."nimrax-master".ref   = "master";
  inputs."nimrax-master".repo  = "nimrax";
  inputs."nimrax-master".type  = "github";
  inputs."nimrax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrax-v0_1_0".dir   = "v0_1_0";
  inputs."nimrax-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimrax-v0_1_0".ref   = "master";
  inputs."nimrax-v0_1_0".repo  = "nimrax";
  inputs."nimrax-v0_1_0".type  = "github";
  inputs."nimrax-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrax-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrax-v0_1_1".dir   = "v0_1_1";
  inputs."nimrax-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimrax-v0_1_1".ref   = "master";
  inputs."nimrax-v0_1_1".repo  = "nimrax";
  inputs."nimrax-v0_1_1".type  = "github";
  inputs."nimrax-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrax-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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