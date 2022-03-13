{
  description = ''Dependency-free and performant Nim Snappy implementation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."supersnappy-master".dir   = "master";
  inputs."supersnappy-master".owner = "nim-nix-pkgs";
  inputs."supersnappy-master".ref   = "master";
  inputs."supersnappy-master".repo  = "supersnappy";
  inputs."supersnappy-master".type  = "github";
  inputs."supersnappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_0_0".dir   = "1_0_0";
  inputs."supersnappy-1_0_0".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_0_0".ref   = "master";
  inputs."supersnappy-1_0_0".repo  = "supersnappy";
  inputs."supersnappy-1_0_0".type  = "github";
  inputs."supersnappy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_0".dir   = "1_1_0";
  inputs."supersnappy-1_1_0".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_0".ref   = "master";
  inputs."supersnappy-1_1_0".repo  = "supersnappy";
  inputs."supersnappy-1_1_0".type  = "github";
  inputs."supersnappy-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_1".dir   = "1_1_1";
  inputs."supersnappy-1_1_1".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_1".ref   = "master";
  inputs."supersnappy-1_1_1".repo  = "supersnappy";
  inputs."supersnappy-1_1_1".type  = "github";
  inputs."supersnappy-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_2".dir   = "1_1_2";
  inputs."supersnappy-1_1_2".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_2".ref   = "master";
  inputs."supersnappy-1_1_2".repo  = "supersnappy";
  inputs."supersnappy-1_1_2".type  = "github";
  inputs."supersnappy-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_3".dir   = "1_1_3";
  inputs."supersnappy-1_1_3".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_3".ref   = "master";
  inputs."supersnappy-1_1_3".repo  = "supersnappy";
  inputs."supersnappy-1_1_3".type  = "github";
  inputs."supersnappy-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_4".dir   = "1_1_4";
  inputs."supersnappy-1_1_4".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_4".ref   = "master";
  inputs."supersnappy-1_1_4".repo  = "supersnappy";
  inputs."supersnappy-1_1_4".type  = "github";
  inputs."supersnappy-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_5".dir   = "1_1_5";
  inputs."supersnappy-1_1_5".owner = "nim-nix-pkgs";
  inputs."supersnappy-1_1_5".ref   = "master";
  inputs."supersnappy-1_1_5".repo  = "supersnappy";
  inputs."supersnappy-1_1_5".type  = "github";
  inputs."supersnappy-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_0_0".dir   = "2_0_0";
  inputs."supersnappy-2_0_0".owner = "nim-nix-pkgs";
  inputs."supersnappy-2_0_0".ref   = "master";
  inputs."supersnappy-2_0_0".repo  = "supersnappy";
  inputs."supersnappy-2_0_0".type  = "github";
  inputs."supersnappy-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_1_0".dir   = "2_1_0";
  inputs."supersnappy-2_1_0".owner = "nim-nix-pkgs";
  inputs."supersnappy-2_1_0".ref   = "master";
  inputs."supersnappy-2_1_0".repo  = "supersnappy";
  inputs."supersnappy-2_1_0".type  = "github";
  inputs."supersnappy-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_1_1".dir   = "2_1_1";
  inputs."supersnappy-2_1_1".owner = "nim-nix-pkgs";
  inputs."supersnappy-2_1_1".ref   = "master";
  inputs."supersnappy-2_1_1".repo  = "supersnappy";
  inputs."supersnappy-2_1_1".type  = "github";
  inputs."supersnappy-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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