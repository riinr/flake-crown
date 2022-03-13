{
  description = ''Concurrent hash table'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stashtable-master".dir   = "master";
  inputs."stashtable-master".owner = "nim-nix-pkgs";
  inputs."stashtable-master".ref   = "master";
  inputs."stashtable-master".repo  = "stashtable";
  inputs."stashtable-master".type  = "github";
  inputs."stashtable-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_0_0".dir   = "1_0_0";
  inputs."stashtable-1_0_0".owner = "nim-nix-pkgs";
  inputs."stashtable-1_0_0".ref   = "master";
  inputs."stashtable-1_0_0".repo  = "stashtable";
  inputs."stashtable-1_0_0".type  = "github";
  inputs."stashtable-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_1_0".dir   = "1_1_0";
  inputs."stashtable-1_1_0".owner = "nim-nix-pkgs";
  inputs."stashtable-1_1_0".ref   = "master";
  inputs."stashtable-1_1_0".repo  = "stashtable";
  inputs."stashtable-1_1_0".type  = "github";
  inputs."stashtable-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_2_0".dir   = "1_2_0";
  inputs."stashtable-1_2_0".owner = "nim-nix-pkgs";
  inputs."stashtable-1_2_0".ref   = "master";
  inputs."stashtable-1_2_0".repo  = "stashtable";
  inputs."stashtable-1_2_0".type  = "github";
  inputs."stashtable-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_2_1".dir   = "1_2_1";
  inputs."stashtable-1_2_1".owner = "nim-nix-pkgs";
  inputs."stashtable-1_2_1".ref   = "master";
  inputs."stashtable-1_2_1".repo  = "stashtable";
  inputs."stashtable-1_2_1".type  = "github";
  inputs."stashtable-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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