{
  description = ''Command line option parser that will make you smile'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."docopt-master".dir   = "master";
  inputs."docopt-master".owner = "nim-nix-pkgs";
  inputs."docopt-master".ref   = "master";
  inputs."docopt-master".repo  = "docopt";
  inputs."docopt-master".type  = "github";
  inputs."docopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_0".dir   = "v0_6_0";
  inputs."docopt-v0_6_0".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_0".ref   = "master";
  inputs."docopt-v0_6_0".repo  = "docopt";
  inputs."docopt-v0_6_0".type  = "github";
  inputs."docopt-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_1".dir   = "v0_6_1";
  inputs."docopt-v0_6_1".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_1".ref   = "master";
  inputs."docopt-v0_6_1".repo  = "docopt";
  inputs."docopt-v0_6_1".type  = "github";
  inputs."docopt-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_2".dir   = "v0_6_2";
  inputs."docopt-v0_6_2".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_2".ref   = "master";
  inputs."docopt-v0_6_2".repo  = "docopt";
  inputs."docopt-v0_6_2".type  = "github";
  inputs."docopt-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_3".dir   = "v0_6_3";
  inputs."docopt-v0_6_3".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_3".ref   = "master";
  inputs."docopt-v0_6_3".repo  = "docopt";
  inputs."docopt-v0_6_3".type  = "github";
  inputs."docopt-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_4".dir   = "v0_6_4";
  inputs."docopt-v0_6_4".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_4".ref   = "master";
  inputs."docopt-v0_6_4".repo  = "docopt";
  inputs."docopt-v0_6_4".type  = "github";
  inputs."docopt-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_5".dir   = "v0_6_5";
  inputs."docopt-v0_6_5".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_5".ref   = "master";
  inputs."docopt-v0_6_5".repo  = "docopt";
  inputs."docopt-v0_6_5".type  = "github";
  inputs."docopt-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_6".dir   = "v0_6_6";
  inputs."docopt-v0_6_6".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_6".ref   = "master";
  inputs."docopt-v0_6_6".repo  = "docopt";
  inputs."docopt-v0_6_6".type  = "github";
  inputs."docopt-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_7".dir   = "v0_6_7";
  inputs."docopt-v0_6_7".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_7".ref   = "master";
  inputs."docopt-v0_6_7".repo  = "docopt";
  inputs."docopt-v0_6_7".type  = "github";
  inputs."docopt-v0_6_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_8".dir   = "v0_6_8";
  inputs."docopt-v0_6_8".owner = "nim-nix-pkgs";
  inputs."docopt-v0_6_8".ref   = "master";
  inputs."docopt-v0_6_8".repo  = "docopt";
  inputs."docopt-v0_6_8".type  = "github";
  inputs."docopt-v0_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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