{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."marggers-master".dir   = "master";
  inputs."marggers-master".owner = "nim-nix-pkgs";
  inputs."marggers-master".ref   = "master";
  inputs."marggers-master".repo  = "marggers";
  inputs."marggers-master".type  = "github";
  inputs."marggers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_1_0".dir   = "v0_1_0";
  inputs."marggers-v0_1_0".owner = "nim-nix-pkgs";
  inputs."marggers-v0_1_0".ref   = "master";
  inputs."marggers-v0_1_0".repo  = "marggers";
  inputs."marggers-v0_1_0".type  = "github";
  inputs."marggers-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_0".dir   = "v0_2_0";
  inputs."marggers-v0_2_0".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_0".ref   = "master";
  inputs."marggers-v0_2_0".repo  = "marggers";
  inputs."marggers-v0_2_0".type  = "github";
  inputs."marggers-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_1".dir   = "v0_2_1";
  inputs."marggers-v0_2_1".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_1".ref   = "master";
  inputs."marggers-v0_2_1".repo  = "marggers";
  inputs."marggers-v0_2_1".type  = "github";
  inputs."marggers-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_2".dir   = "v0_2_2";
  inputs."marggers-v0_2_2".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_2".ref   = "master";
  inputs."marggers-v0_2_2".repo  = "marggers";
  inputs."marggers-v0_2_2".type  = "github";
  inputs."marggers-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_3".dir   = "v0_2_3";
  inputs."marggers-v0_2_3".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_3".ref   = "master";
  inputs."marggers-v0_2_3".repo  = "marggers";
  inputs."marggers-v0_2_3".type  = "github";
  inputs."marggers-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_4".dir   = "v0_2_4";
  inputs."marggers-v0_2_4".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_4".ref   = "master";
  inputs."marggers-v0_2_4".repo  = "marggers";
  inputs."marggers-v0_2_4".type  = "github";
  inputs."marggers-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_5".dir   = "v0_2_5";
  inputs."marggers-v0_2_5".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_5".ref   = "master";
  inputs."marggers-v0_2_5".repo  = "marggers";
  inputs."marggers-v0_2_5".type  = "github";
  inputs."marggers-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_6".dir   = "v0_2_6";
  inputs."marggers-v0_2_6".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_6".ref   = "master";
  inputs."marggers-v0_2_6".repo  = "marggers";
  inputs."marggers-v0_2_6".type  = "github";
  inputs."marggers-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_7".dir   = "v0_2_7";
  inputs."marggers-v0_2_7".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_7".ref   = "master";
  inputs."marggers-v0_2_7".repo  = "marggers";
  inputs."marggers-v0_2_7".type  = "github";
  inputs."marggers-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."marggers-v0_2_8".dir   = "v0_2_8";
  inputs."marggers-v0_2_8".owner = "nim-nix-pkgs";
  inputs."marggers-v0_2_8".ref   = "master";
  inputs."marggers-v0_2_8".repo  = "marggers";
  inputs."marggers-v0_2_8".type  = "github";
  inputs."marggers-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."marggers-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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