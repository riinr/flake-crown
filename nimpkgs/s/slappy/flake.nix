{
  description = ''A 3d sound API for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slappy-master".dir   = "master";
  inputs."slappy-master".owner = "nim-nix-pkgs";
  inputs."slappy-master".ref   = "master";
  inputs."slappy-master".repo  = "slappy";
  inputs."slappy-master".type  = "github";
  inputs."slappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-0_3_0".dir   = "0_3_0";
  inputs."slappy-0_3_0".owner = "nim-nix-pkgs";
  inputs."slappy-0_3_0".ref   = "master";
  inputs."slappy-0_3_0".repo  = "slappy";
  inputs."slappy-0_3_0".type  = "github";
  inputs."slappy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-0_3_1".dir   = "0_3_1";
  inputs."slappy-0_3_1".owner = "nim-nix-pkgs";
  inputs."slappy-0_3_1".ref   = "master";
  inputs."slappy-0_3_1".repo  = "slappy";
  inputs."slappy-0_3_1".type  = "github";
  inputs."slappy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euphony-v0_1_0".dir   = "v0_1_0";
  inputs."euphony-v0_1_0".owner = "nim-nix-pkgs";
  inputs."euphony-v0_1_0".ref   = "master";
  inputs."euphony-v0_1_0".repo  = "euphony";
  inputs."euphony-v0_1_0".type  = "github";
  inputs."euphony-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euphony-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euphony-v0_2_0".dir   = "v0_2_0";
  inputs."euphony-v0_2_0".owner = "nim-nix-pkgs";
  inputs."euphony-v0_2_0".ref   = "master";
  inputs."euphony-v0_2_0".repo  = "euphony";
  inputs."euphony-v0_2_0".type  = "github";
  inputs."euphony-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euphony-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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