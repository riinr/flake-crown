{
  description = ''Nim implementation of user-agent parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uap-master".dir   = "master";
  inputs."uap-master".owner = "nim-nix-pkgs";
  inputs."uap-master".ref   = "master";
  inputs."uap-master".repo  = "uap";
  inputs."uap-master".type  = "github";
  inputs."uap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_0".dir   = "v1_0_0";
  inputs."uap-v1_0_0".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_0".ref   = "master";
  inputs."uap-v1_0_0".repo  = "uap";
  inputs."uap-v1_0_0".type  = "github";
  inputs."uap-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_1".dir   = "v1_0_1";
  inputs."uap-v1_0_1".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_1".ref   = "master";
  inputs."uap-v1_0_1".repo  = "uap";
  inputs."uap-v1_0_1".type  = "github";
  inputs."uap-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_2".dir   = "v1_0_2";
  inputs."uap-v1_0_2".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_2".ref   = "master";
  inputs."uap-v1_0_2".repo  = "uap";
  inputs."uap-v1_0_2".type  = "github";
  inputs."uap-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_3".dir   = "v1_0_3";
  inputs."uap-v1_0_3".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_3".ref   = "master";
  inputs."uap-v1_0_3".repo  = "uap";
  inputs."uap-v1_0_3".type  = "github";
  inputs."uap-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_4".dir   = "v1_0_4";
  inputs."uap-v1_0_4".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_4".ref   = "master";
  inputs."uap-v1_0_4".repo  = "uap";
  inputs."uap-v1_0_4".type  = "github";
  inputs."uap-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_5".dir   = "v1_0_5";
  inputs."uap-v1_0_5".owner = "nim-nix-pkgs";
  inputs."uap-v1_0_5".ref   = "master";
  inputs."uap-v1_0_5".repo  = "uap";
  inputs."uap-v1_0_5".type  = "github";
  inputs."uap-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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