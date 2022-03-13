{
  description = ''OAuth library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oauth-develop".dir   = "develop";
  inputs."oauth-develop".owner = "nim-nix-pkgs";
  inputs."oauth-develop".ref   = "master";
  inputs."oauth-develop".repo  = "oauth";
  inputs."oauth-develop".type  = "github";
  inputs."oauth-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-master".dir   = "master";
  inputs."oauth-master".owner = "nim-nix-pkgs";
  inputs."oauth-master".ref   = "master";
  inputs."oauth-master".repo  = "oauth";
  inputs."oauth-master".type  = "github";
  inputs."oauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_10".dir   = "v0_10";
  inputs."oauth-v0_10".owner = "nim-nix-pkgs";
  inputs."oauth-v0_10".ref   = "master";
  inputs."oauth-v0_10".repo  = "oauth";
  inputs."oauth-v0_10".type  = "github";
  inputs."oauth-v0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_2".dir   = "v0_2";
  inputs."oauth-v0_2".owner = "nim-nix-pkgs";
  inputs."oauth-v0_2".ref   = "master";
  inputs."oauth-v0_2".repo  = "oauth";
  inputs."oauth-v0_2".type  = "github";
  inputs."oauth-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_3".dir   = "v0_3";
  inputs."oauth-v0_3".owner = "nim-nix-pkgs";
  inputs."oauth-v0_3".ref   = "master";
  inputs."oauth-v0_3".repo  = "oauth";
  inputs."oauth-v0_3".type  = "github";
  inputs."oauth-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_4".dir   = "v0_4";
  inputs."oauth-v0_4".owner = "nim-nix-pkgs";
  inputs."oauth-v0_4".ref   = "master";
  inputs."oauth-v0_4".repo  = "oauth";
  inputs."oauth-v0_4".type  = "github";
  inputs."oauth-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_4_1".dir   = "v0_4_1";
  inputs."oauth-v0_4_1".owner = "nim-nix-pkgs";
  inputs."oauth-v0_4_1".ref   = "master";
  inputs."oauth-v0_4_1".repo  = "oauth";
  inputs."oauth-v0_4_1".type  = "github";
  inputs."oauth-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_5".dir   = "v0_5";
  inputs."oauth-v0_5".owner = "nim-nix-pkgs";
  inputs."oauth-v0_5".ref   = "master";
  inputs."oauth-v0_5".repo  = "oauth";
  inputs."oauth-v0_5".type  = "github";
  inputs."oauth-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_6".dir   = "v0_6";
  inputs."oauth-v0_6".owner = "nim-nix-pkgs";
  inputs."oauth-v0_6".ref   = "master";
  inputs."oauth-v0_6".repo  = "oauth";
  inputs."oauth-v0_6".type  = "github";
  inputs."oauth-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_7".dir   = "v0_7";
  inputs."oauth-v0_7".owner = "nim-nix-pkgs";
  inputs."oauth-v0_7".ref   = "master";
  inputs."oauth-v0_7".repo  = "oauth";
  inputs."oauth-v0_7".type  = "github";
  inputs."oauth-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_8".dir   = "v0_8";
  inputs."oauth-v0_8".owner = "nim-nix-pkgs";
  inputs."oauth-v0_8".ref   = "master";
  inputs."oauth-v0_8".repo  = "oauth";
  inputs."oauth-v0_8".type  = "github";
  inputs."oauth-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_9".dir   = "v0_9";
  inputs."oauth-v0_9".owner = "nim-nix-pkgs";
  inputs."oauth-v0_9".ref   = "master";
  inputs."oauth-v0_9".repo  = "oauth";
  inputs."oauth-v0_9".type  = "github";
  inputs."oauth-v0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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