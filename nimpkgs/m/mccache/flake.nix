{
  description = ''mccache package: in-memory caching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mccache-master".dir   = "master";
  inputs."mccache-master".owner = "nim-nix-pkgs";
  inputs."mccache-master".ref   = "master";
  inputs."mccache-master".repo  = "mccache";
  inputs."mccache-master".type  = "github";
  inputs."mccache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_1_1".dir   = "v0_1_1";
  inputs."mccache-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mccache-v0_1_1".ref   = "master";
  inputs."mccache-v0_1_1".repo  = "mccache";
  inputs."mccache-v0_1_1".type  = "github";
  inputs."mccache-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_1_2".dir   = "v0_1_2";
  inputs."mccache-v0_1_2".owner = "nim-nix-pkgs";
  inputs."mccache-v0_1_2".ref   = "master";
  inputs."mccache-v0_1_2".repo  = "mccache";
  inputs."mccache-v0_1_2".type  = "github";
  inputs."mccache-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_2_0".dir   = "v0_2_0";
  inputs."mccache-v0_2_0".owner = "nim-nix-pkgs";
  inputs."mccache-v0_2_0".ref   = "master";
  inputs."mccache-v0_2_0".repo  = "mccache";
  inputs."mccache-v0_2_0".type  = "github";
  inputs."mccache-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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