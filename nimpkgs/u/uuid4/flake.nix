{
  description = ''UUIDs in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uuid4-main".dir   = "main";
  inputs."uuid4-main".owner = "nim-nix-pkgs";
  inputs."uuid4-main".ref   = "master";
  inputs."uuid4-main".repo  = "uuid4";
  inputs."uuid4-main".type  = "github";
  inputs."uuid4-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_0".dir   = "v0_9_0";
  inputs."uuid4-v0_9_0".owner = "nim-nix-pkgs";
  inputs."uuid4-v0_9_0".ref   = "master";
  inputs."uuid4-v0_9_0".repo  = "uuid4";
  inputs."uuid4-v0_9_0".type  = "github";
  inputs."uuid4-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_1".dir   = "v0_9_1";
  inputs."uuid4-v0_9_1".owner = "nim-nix-pkgs";
  inputs."uuid4-v0_9_1".ref   = "master";
  inputs."uuid4-v0_9_1".repo  = "uuid4";
  inputs."uuid4-v0_9_1".type  = "github";
  inputs."uuid4-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_2".dir   = "v0_9_2";
  inputs."uuid4-v0_9_2".owner = "nim-nix-pkgs";
  inputs."uuid4-v0_9_2".ref   = "master";
  inputs."uuid4-v0_9_2".repo  = "uuid4";
  inputs."uuid4-v0_9_2".type  = "github";
  inputs."uuid4-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuid4-v0_9_3".dir   = "v0_9_3";
  inputs."uuid4-v0_9_3".owner = "nim-nix-pkgs";
  inputs."uuid4-v0_9_3".ref   = "master";
  inputs."uuid4-v0_9_3".repo  = "uuid4";
  inputs."uuid4-v0_9_3".type  = "github";
  inputs."uuid4-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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