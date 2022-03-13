{
  description = ''quickly generate cryptographically secure passwords and phrases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpass-master".dir   = "master";
  inputs."nimpass-master".owner = "nim-nix-pkgs";
  inputs."nimpass-master".ref   = "master";
  inputs."nimpass-master".repo  = "nimpass";
  inputs."nimpass-master".type  = "github";
  inputs."nimpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_1".dir   = "v0_0_1";
  inputs."nimpass-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_1".ref   = "master";
  inputs."nimpass-v0_0_1".repo  = "nimpass";
  inputs."nimpass-v0_0_1".type  = "github";
  inputs."nimpass-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_2".dir   = "v0_0_2";
  inputs."nimpass-v0_0_2".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_2".ref   = "master";
  inputs."nimpass-v0_0_2".repo  = "nimpass";
  inputs."nimpass-v0_0_2".type  = "github";
  inputs."nimpass-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_3".dir   = "v0_0_3";
  inputs."nimpass-v0_0_3".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_3".ref   = "master";
  inputs."nimpass-v0_0_3".repo  = "nimpass";
  inputs."nimpass-v0_0_3".type  = "github";
  inputs."nimpass-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_4".dir   = "v0_0_4";
  inputs."nimpass-v0_0_4".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_4".ref   = "master";
  inputs."nimpass-v0_0_4".repo  = "nimpass";
  inputs."nimpass-v0_0_4".type  = "github";
  inputs."nimpass-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_5".dir   = "v0_0_5";
  inputs."nimpass-v0_0_5".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_5".ref   = "master";
  inputs."nimpass-v0_0_5".repo  = "nimpass";
  inputs."nimpass-v0_0_5".type  = "github";
  inputs."nimpass-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_6".dir   = "v0_0_6";
  inputs."nimpass-v0_0_6".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_6".ref   = "master";
  inputs."nimpass-v0_0_6".repo  = "nimpass";
  inputs."nimpass-v0_0_6".type  = "github";
  inputs."nimpass-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_7".dir   = "v0_0_7";
  inputs."nimpass-v0_0_7".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_7".ref   = "master";
  inputs."nimpass-v0_0_7".repo  = "nimpass";
  inputs."nimpass-v0_0_7".type  = "github";
  inputs."nimpass-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_8".dir   = "v0_0_8";
  inputs."nimpass-v0_0_8".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_8".ref   = "master";
  inputs."nimpass-v0_0_8".repo  = "nimpass";
  inputs."nimpass-v0_0_8".type  = "github";
  inputs."nimpass-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_0_9".dir   = "v0_0_9";
  inputs."nimpass-v0_0_9".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_0_9".ref   = "master";
  inputs."nimpass-v0_0_9".repo  = "nimpass";
  inputs."nimpass-v0_0_9".type  = "github";
  inputs."nimpass-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_1_0".dir   = "v0_1_0";
  inputs."nimpass-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_1_0".ref   = "master";
  inputs."nimpass-v0_1_0".repo  = "nimpass";
  inputs."nimpass-v0_1_0".type  = "github";
  inputs."nimpass-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_1_1".dir   = "v0_1_1";
  inputs."nimpass-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_1_1".ref   = "master";
  inputs."nimpass-v0_1_1".repo  = "nimpass";
  inputs."nimpass-v0_1_1".type  = "github";
  inputs."nimpass-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v0_2_0".dir   = "v0_2_0";
  inputs."nimpass-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimpass-v0_2_0".ref   = "master";
  inputs."nimpass-v0_2_0".repo  = "nimpass";
  inputs."nimpass-v0_2_0".type  = "github";
  inputs."nimpass-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpass-v1_2_1".dir   = "v1_2_1";
  inputs."nimpass-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nimpass-v1_2_1".ref   = "master";
  inputs."nimpass-v1_2_1".repo  = "nimpass";
  inputs."nimpass-v1_2_1".type  = "github";
  inputs."nimpass-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpass-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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