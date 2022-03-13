{
  description = ''Bindings for Miniz lib.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."miniz-master".dir   = "master";
  inputs."miniz-master".owner = "nim-nix-pkgs";
  inputs."miniz-master".ref   = "master";
  inputs."miniz-master".repo  = "miniz";
  inputs."miniz-master".type  = "github";
  inputs."miniz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-0_1_0".dir   = "0_1_0";
  inputs."miniz-0_1_0".owner = "nim-nix-pkgs";
  inputs."miniz-0_1_0".ref   = "master";
  inputs."miniz-0_1_0".repo  = "miniz";
  inputs."miniz-0_1_0".type  = "github";
  inputs."miniz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-0_2_0".dir   = "0_2_0";
  inputs."miniz-0_2_0".owner = "nim-nix-pkgs";
  inputs."miniz-0_2_0".ref   = "master";
  inputs."miniz-0_2_0".repo  = "miniz";
  inputs."miniz-0_2_0".type  = "github";
  inputs."miniz-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-v0_1_0".dir   = "v0_1_0";
  inputs."miniz-v0_1_0".owner = "nim-nix-pkgs";
  inputs."miniz-v0_1_0".ref   = "master";
  inputs."miniz-v0_1_0".repo  = "miniz";
  inputs."miniz-v0_1_0".type  = "github";
  inputs."miniz-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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