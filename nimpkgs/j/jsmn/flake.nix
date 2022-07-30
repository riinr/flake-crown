{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsmn-devel".dir   = "devel";
  inputs."jsmn-devel".owner = "nim-nix-pkgs";
  inputs."jsmn-devel".ref   = "master";
  inputs."jsmn-devel".repo  = "jsmn";
  inputs."jsmn-devel".type  = "github";
  inputs."jsmn-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-master".dir   = "master";
  inputs."jsmn-master".owner = "nim-nix-pkgs";
  inputs."jsmn-master".ref   = "master";
  inputs."jsmn-master".repo  = "jsmn";
  inputs."jsmn-master".type  = "github";
  inputs."jsmn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_0".dir   = "0_1_0";
  inputs."jsmn-0_1_0".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_0".ref   = "master";
  inputs."jsmn-0_1_0".repo  = "jsmn";
  inputs."jsmn-0_1_0".type  = "github";
  inputs."jsmn-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_1".dir   = "0_1_1";
  inputs."jsmn-0_1_1".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_1".ref   = "master";
  inputs."jsmn-0_1_1".repo  = "jsmn";
  inputs."jsmn-0_1_1".type  = "github";
  inputs."jsmn-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_2".dir   = "0_1_2";
  inputs."jsmn-0_1_2".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_2".ref   = "master";
  inputs."jsmn-0_1_2".repo  = "jsmn";
  inputs."jsmn-0_1_2".type  = "github";
  inputs."jsmn-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_3".dir   = "0_1_3";
  inputs."jsmn-0_1_3".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_3".ref   = "master";
  inputs."jsmn-0_1_3".repo  = "jsmn";
  inputs."jsmn-0_1_3".type  = "github";
  inputs."jsmn-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_4".dir   = "0_1_4";
  inputs."jsmn-0_1_4".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_4".ref   = "master";
  inputs."jsmn-0_1_4".repo  = "jsmn";
  inputs."jsmn-0_1_4".type  = "github";
  inputs."jsmn-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_5".dir   = "0_1_5";
  inputs."jsmn-0_1_5".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_5".ref   = "master";
  inputs."jsmn-0_1_5".repo  = "jsmn";
  inputs."jsmn-0_1_5".type  = "github";
  inputs."jsmn-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_6".dir   = "0_1_6";
  inputs."jsmn-0_1_6".owner = "nim-nix-pkgs";
  inputs."jsmn-0_1_6".ref   = "master";
  inputs."jsmn-0_1_6".repo  = "jsmn";
  inputs."jsmn-0_1_6".type  = "github";
  inputs."jsmn-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_2".dir   = "0_2";
  inputs."jsmn-0_2".owner = "nim-nix-pkgs";
  inputs."jsmn-0_2".ref   = "master";
  inputs."jsmn-0_2".repo  = "jsmn";
  inputs."jsmn-0_2".type  = "github";
  inputs."jsmn-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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