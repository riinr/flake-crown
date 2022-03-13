{
  description = ''Experimental wrapper to webgl for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webgl-master".dir   = "master";
  inputs."webgl-master".owner = "nim-nix-pkgs";
  inputs."webgl-master".ref   = "master";
  inputs."webgl-master".repo  = "webgl";
  inputs."webgl-master".type  = "github";
  inputs."webgl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_1_0".dir   = "0_1_0";
  inputs."webgl-0_1_0".owner = "nim-nix-pkgs";
  inputs."webgl-0_1_0".ref   = "master";
  inputs."webgl-0_1_0".repo  = "webgl";
  inputs."webgl-0_1_0".type  = "github";
  inputs."webgl-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_1_2".dir   = "0_1_2";
  inputs."webgl-0_1_2".owner = "nim-nix-pkgs";
  inputs."webgl-0_1_2".ref   = "master";
  inputs."webgl-0_1_2".repo  = "webgl";
  inputs."webgl-0_1_2".type  = "github";
  inputs."webgl-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_2_0".dir   = "0_2_0";
  inputs."webgl-0_2_0".owner = "nim-nix-pkgs";
  inputs."webgl-0_2_0".ref   = "master";
  inputs."webgl-0_2_0".repo  = "webgl";
  inputs."webgl-0_2_0".type  = "github";
  inputs."webgl-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_2_1".dir   = "0_2_1";
  inputs."webgl-0_2_1".owner = "nim-nix-pkgs";
  inputs."webgl-0_2_1".ref   = "master";
  inputs."webgl-0_2_1".repo  = "webgl";
  inputs."webgl-0_2_1".type  = "github";
  inputs."webgl-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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