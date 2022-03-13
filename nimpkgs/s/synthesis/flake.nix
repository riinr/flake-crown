{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."synthesis-master".dir   = "master";
  inputs."synthesis-master".owner = "nim-nix-pkgs";
  inputs."synthesis-master".ref   = "master";
  inputs."synthesis-master".repo  = "synthesis";
  inputs."synthesis-master".type  = "github";
  inputs."synthesis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."synthesis-v0_1_0".dir   = "v0_1_0";
  inputs."synthesis-v0_1_0".owner = "nim-nix-pkgs";
  inputs."synthesis-v0_1_0".ref   = "master";
  inputs."synthesis-v0_1_0".repo  = "synthesis";
  inputs."synthesis-v0_1_0".type  = "github";
  inputs."synthesis-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."synthesis-v0_2_0".dir   = "v0_2_0";
  inputs."synthesis-v0_2_0".owner = "nim-nix-pkgs";
  inputs."synthesis-v0_2_0".ref   = "master";
  inputs."synthesis-v0_2_0".repo  = "synthesis";
  inputs."synthesis-v0_2_0".type  = "github";
  inputs."synthesis-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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