{
  description = ''Convert json node to camelcase'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."camelize-master".dir   = "master";
  inputs."camelize-master".owner = "nim-nix-pkgs";
  inputs."camelize-master".ref   = "master";
  inputs."camelize-master".repo  = "camelize";
  inputs."camelize-master".type  = "github";
  inputs."camelize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."camelize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."camelize-v0_1_0".dir   = "v0_1_0";
  inputs."camelize-v0_1_0".owner = "nim-nix-pkgs";
  inputs."camelize-v0_1_0".ref   = "master";
  inputs."camelize-v0_1_0".repo  = "camelize";
  inputs."camelize-v0_1_0".type  = "github";
  inputs."camelize-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."camelize-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."camelize-v0_2_0".dir   = "v0_2_0";
  inputs."camelize-v0_2_0".owner = "nim-nix-pkgs";
  inputs."camelize-v0_2_0".ref   = "master";
  inputs."camelize-v0_2_0".repo  = "camelize";
  inputs."camelize-v0_2_0".type  = "github";
  inputs."camelize-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."camelize-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."camelize-v0_2_1".dir   = "v0_2_1";
  inputs."camelize-v0_2_1".owner = "nim-nix-pkgs";
  inputs."camelize-v0_2_1".ref   = "master";
  inputs."camelize-v0_2_1".repo  = "camelize";
  inputs."camelize-v0_2_1".type  = "github";
  inputs."camelize-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."camelize-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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