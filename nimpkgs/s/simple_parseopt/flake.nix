{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simple_parseopt-master".dir   = "master";
  inputs."simple_parseopt-master".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-master".ref   = "master";
  inputs."simple_parseopt-master".repo  = "simple_parseopt";
  inputs."simple_parseopt-master".type  = "github";
  inputs."simple_parseopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_10".dir   = "v1_0_10";
  inputs."simple_parseopt-v1_0_10".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-v1_0_10".ref   = "master";
  inputs."simple_parseopt-v1_0_10".repo  = "simple_parseopt";
  inputs."simple_parseopt-v1_0_10".type  = "github";
  inputs."simple_parseopt-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_8".dir   = "v1_0_8";
  inputs."simple_parseopt-v1_0_8".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-v1_0_8".ref   = "master";
  inputs."simple_parseopt-v1_0_8".repo  = "simple_parseopt";
  inputs."simple_parseopt-v1_0_8".type  = "github";
  inputs."simple_parseopt-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_9".dir   = "v1_0_9";
  inputs."simple_parseopt-v1_0_9".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-v1_0_9".ref   = "master";
  inputs."simple_parseopt-v1_0_9".repo  = "simple_parseopt";
  inputs."simple_parseopt-v1_0_9".type  = "github";
  inputs."simple_parseopt-v1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_1_0".dir   = "v1_1_0";
  inputs."simple_parseopt-v1_1_0".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-v1_1_0".ref   = "master";
  inputs."simple_parseopt-v1_1_0".repo  = "simple_parseopt";
  inputs."simple_parseopt-v1_1_0".type  = "github";
  inputs."simple_parseopt-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_1_1".dir   = "v1_1_1";
  inputs."simple_parseopt-v1_1_1".owner = "nim-nix-pkgs";
  inputs."simple_parseopt-v1_1_1".ref   = "master";
  inputs."simple_parseopt-v1_1_1".repo  = "simple_parseopt";
  inputs."simple_parseopt-v1_1_1".type  = "github";
  inputs."simple_parseopt-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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