{
  description = ''Low-level twitter API wrapper library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."twitter-master".dir   = "master";
  inputs."twitter-master".owner = "nim-nix-pkgs";
  inputs."twitter-master".ref   = "master";
  inputs."twitter-master".repo  = "twitter";
  inputs."twitter-master".type  = "github";
  inputs."twitter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."twitter-1_0_0".dir   = "1_0_0";
  inputs."twitter-1_0_0".owner = "nim-nix-pkgs";
  inputs."twitter-1_0_0".ref   = "master";
  inputs."twitter-1_0_0".repo  = "twitter";
  inputs."twitter-1_0_0".type  = "github";
  inputs."twitter-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."twitter-1_0_1".dir   = "1_0_1";
  inputs."twitter-1_0_1".owner = "nim-nix-pkgs";
  inputs."twitter-1_0_1".ref   = "master";
  inputs."twitter-1_0_1".repo  = "twitter";
  inputs."twitter-1_0_1".type  = "github";
  inputs."twitter-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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