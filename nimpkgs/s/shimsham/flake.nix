{
  description = ''Hashing/Digest collection in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shimsham-master".dir   = "master";
  inputs."shimsham-master".owner = "nim-nix-pkgs";
  inputs."shimsham-master".ref   = "master";
  inputs."shimsham-master".repo  = "shimsham";
  inputs."shimsham-master".type  = "github";
  inputs."shimsham-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_0_1".dir   = "0_0_1";
  inputs."shimsham-0_0_1".owner = "nim-nix-pkgs";
  inputs."shimsham-0_0_1".ref   = "master";
  inputs."shimsham-0_0_1".repo  = "shimsham";
  inputs."shimsham-0_0_1".type  = "github";
  inputs."shimsham-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_2".dir   = "0_3_2";
  inputs."shimsham-0_3_2".owner = "nim-nix-pkgs";
  inputs."shimsham-0_3_2".ref   = "master";
  inputs."shimsham-0_3_2".repo  = "shimsham";
  inputs."shimsham-0_3_2".type  = "github";
  inputs."shimsham-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_3".dir   = "0_3_3";
  inputs."shimsham-0_3_3".owner = "nim-nix-pkgs";
  inputs."shimsham-0_3_3".ref   = "master";
  inputs."shimsham-0_3_3".repo  = "shimsham";
  inputs."shimsham-0_3_3".type  = "github";
  inputs."shimsham-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_4".dir   = "0_3_4";
  inputs."shimsham-0_3_4".owner = "nim-nix-pkgs";
  inputs."shimsham-0_3_4".ref   = "master";
  inputs."shimsham-0_3_4".repo  = "shimsham";
  inputs."shimsham-0_3_4".type  = "github";
  inputs."shimsham-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_1_0-alpha".dir   = "v0_1_0-alpha";
  inputs."shimsham-v0_1_0-alpha".owner = "nim-nix-pkgs";
  inputs."shimsham-v0_1_0-alpha".ref   = "master";
  inputs."shimsham-v0_1_0-alpha".repo  = "shimsham";
  inputs."shimsham-v0_1_0-alpha".type  = "github";
  inputs."shimsham-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_2_0-alpha".dir   = "v0_2_0-alpha";
  inputs."shimsham-v0_2_0-alpha".owner = "nim-nix-pkgs";
  inputs."shimsham-v0_2_0-alpha".ref   = "master";
  inputs."shimsham-v0_2_0-alpha".repo  = "shimsham";
  inputs."shimsham-v0_2_0-alpha".type  = "github";
  inputs."shimsham-v0_2_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_2_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_3_1-alpha".dir   = "v0_3_1-alpha";
  inputs."shimsham-v0_3_1-alpha".owner = "nim-nix-pkgs";
  inputs."shimsham-v0_3_1-alpha".ref   = "master";
  inputs."shimsham-v0_3_1-alpha".repo  = "shimsham";
  inputs."shimsham-v0_3_1-alpha".type  = "github";
  inputs."shimsham-v0_3_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_3_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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