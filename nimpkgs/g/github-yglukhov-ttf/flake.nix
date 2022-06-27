{
  description = ''TTF library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ttf-master".dir   = "master";
  inputs."ttf-master".owner = "nim-nix-pkgs";
  inputs."ttf-master".ref   = "master";
  inputs."ttf-master".repo  = "ttf";
  inputs."ttf-master".type  = "github";
  inputs."ttf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_1".dir   = "0_2_1";
  inputs."ttf-0_2_1".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_1".ref   = "master";
  inputs."ttf-0_2_1".repo  = "ttf";
  inputs."ttf-0_2_1".type  = "github";
  inputs."ttf-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_10".dir   = "0_2_10";
  inputs."ttf-0_2_10".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_10".ref   = "master";
  inputs."ttf-0_2_10".repo  = "ttf";
  inputs."ttf-0_2_10".type  = "github";
  inputs."ttf-0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_11".dir   = "0_2_11";
  inputs."ttf-0_2_11".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_11".ref   = "master";
  inputs."ttf-0_2_11".repo  = "ttf";
  inputs."ttf-0_2_11".type  = "github";
  inputs."ttf-0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_12".dir   = "0_2_12";
  inputs."ttf-0_2_12".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_12".ref   = "master";
  inputs."ttf-0_2_12".repo  = "ttf";
  inputs."ttf-0_2_12".type  = "github";
  inputs."ttf-0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_2".dir   = "0_2_2";
  inputs."ttf-0_2_2".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_2".ref   = "master";
  inputs."ttf-0_2_2".repo  = "ttf";
  inputs."ttf-0_2_2".type  = "github";
  inputs."ttf-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_3".dir   = "0_2_3";
  inputs."ttf-0_2_3".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_3".ref   = "master";
  inputs."ttf-0_2_3".repo  = "ttf";
  inputs."ttf-0_2_3".type  = "github";
  inputs."ttf-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_4".dir   = "0_2_4";
  inputs."ttf-0_2_4".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_4".ref   = "master";
  inputs."ttf-0_2_4".repo  = "ttf";
  inputs."ttf-0_2_4".type  = "github";
  inputs."ttf-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_5".dir   = "0_2_5";
  inputs."ttf-0_2_5".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_5".ref   = "master";
  inputs."ttf-0_2_5".repo  = "ttf";
  inputs."ttf-0_2_5".type  = "github";
  inputs."ttf-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_6".dir   = "0_2_6";
  inputs."ttf-0_2_6".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_6".ref   = "master";
  inputs."ttf-0_2_6".repo  = "ttf";
  inputs."ttf-0_2_6".type  = "github";
  inputs."ttf-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_7".dir   = "0_2_7";
  inputs."ttf-0_2_7".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_7".ref   = "master";
  inputs."ttf-0_2_7".repo  = "ttf";
  inputs."ttf-0_2_7".type  = "github";
  inputs."ttf-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_8".dir   = "0_2_8";
  inputs."ttf-0_2_8".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_8".ref   = "master";
  inputs."ttf-0_2_8".repo  = "ttf";
  inputs."ttf-0_2_8".type  = "github";
  inputs."ttf-0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-0_2_9".dir   = "0_2_9";
  inputs."ttf-0_2_9".owner = "nim-nix-pkgs";
  inputs."ttf-0_2_9".ref   = "master";
  inputs."ttf-0_2_9".repo  = "ttf";
  inputs."ttf-0_2_9".type  = "github";
  inputs."ttf-0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ttf-v0_2".dir   = "v0_2";
  inputs."ttf-v0_2".owner = "nim-nix-pkgs";
  inputs."ttf-v0_2".ref   = "master";
  inputs."ttf-v0_2".repo  = "ttf";
  inputs."ttf-v0_2".type  = "github";
  inputs."ttf-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttf-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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