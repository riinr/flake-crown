{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arturo-master".dir   = "master";
  inputs."arturo-master".owner = "nim-nix-pkgs";
  inputs."arturo-master".ref   = "master";
  inputs."arturo-master".repo  = "arturo";
  inputs."arturo-master".type  = "github";
  inputs."arturo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-0_9_4".dir   = "0_9_4";
  inputs."arturo-0_9_4".owner = "nim-nix-pkgs";
  inputs."arturo-0_9_4".ref   = "master";
  inputs."arturo-0_9_4".repo  = "arturo";
  inputs."arturo-0_9_4".type  = "github";
  inputs."arturo-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_1".dir   = "v0_3_1";
  inputs."arturo-v0_3_1".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_1".ref   = "master";
  inputs."arturo-v0_3_1".repo  = "arturo";
  inputs."arturo-v0_3_1".type  = "github";
  inputs."arturo-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_3".dir   = "v0_3_3";
  inputs."arturo-v0_3_3".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_3".ref   = "master";
  inputs."arturo-v0_3_3".repo  = "arturo";
  inputs."arturo-v0_3_3".type  = "github";
  inputs."arturo-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_4".dir   = "v0_3_4";
  inputs."arturo-v0_3_4".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_4".ref   = "master";
  inputs."arturo-v0_3_4".repo  = "arturo";
  inputs."arturo-v0_3_4".type  = "github";
  inputs."arturo-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_5".dir   = "v0_3_5";
  inputs."arturo-v0_3_5".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_5".ref   = "master";
  inputs."arturo-v0_3_5".repo  = "arturo";
  inputs."arturo-v0_3_5".type  = "github";
  inputs."arturo-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_6".dir   = "v0_3_6";
  inputs."arturo-v0_3_6".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_6".ref   = "master";
  inputs."arturo-v0_3_6".repo  = "arturo";
  inputs."arturo-v0_3_6".type  = "github";
  inputs."arturo-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_7".dir   = "v0_3_7";
  inputs."arturo-v0_3_7".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_7".ref   = "master";
  inputs."arturo-v0_3_7".repo  = "arturo";
  inputs."arturo-v0_3_7".type  = "github";
  inputs."arturo-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_8".dir   = "v0_3_8";
  inputs."arturo-v0_3_8".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_8".ref   = "master";
  inputs."arturo-v0_3_8".repo  = "arturo";
  inputs."arturo-v0_3_8".type  = "github";
  inputs."arturo-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_3_9".dir   = "v0_3_9";
  inputs."arturo-v0_3_9".owner = "nim-nix-pkgs";
  inputs."arturo-v0_3_9".ref   = "master";
  inputs."arturo-v0_3_9".repo  = "arturo";
  inputs."arturo-v0_3_9".type  = "github";
  inputs."arturo-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_4_0".dir   = "v0_4_0";
  inputs."nim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nim-v0_4_0".ref   = "master";
  inputs."nim-v0_4_0".repo  = "nim";
  inputs."nim-v0_4_0".type  = "github";
  inputs."nim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_4_6".dir   = "v0_9_4_6";
  inputs."arturo-v0_9_4_6".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_4_6".ref   = "master";
  inputs."arturo-v0_9_4_6".repo  = "arturo";
  inputs."arturo-v0_9_4_6".type  = "github";
  inputs."arturo-v0_9_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_5".dir   = "v0_9_5";
  inputs."arturo-v0_9_5".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_5".ref   = "master";
  inputs."arturo-v0_9_5".repo  = "arturo";
  inputs."arturo-v0_9_5".type  = "github";
  inputs."arturo-v0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_6".dir   = "v0_9_6";
  inputs."arturo-v0_9_6".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_6".ref   = "master";
  inputs."arturo-v0_9_6".repo  = "arturo";
  inputs."arturo-v0_9_6".type  = "github";
  inputs."arturo-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_6_1".dir   = "v0_9_6_1";
  inputs."arturo-v0_9_6_1".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_6_1".ref   = "master";
  inputs."arturo-v0_9_6_1".repo  = "arturo";
  inputs."arturo-v0_9_6_1".type  = "github";
  inputs."arturo-v0_9_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_6_5".dir   = "v0_9_6_5";
  inputs."arturo-v0_9_6_5".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_6_5".ref   = "master";
  inputs."arturo-v0_9_6_5".repo  = "arturo";
  inputs."arturo-v0_9_6_5".type  = "github";
  inputs."arturo-v0_9_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_7".dir   = "v0_9_7";
  inputs."arturo-v0_9_7".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_7".ref   = "master";
  inputs."arturo-v0_9_7".repo  = "arturo";
  inputs."arturo-v0_9_7".type  = "github";
  inputs."arturo-v0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_7_2".dir   = "v0_9_7_2";
  inputs."arturo-v0_9_7_2".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_7_2".ref   = "master";
  inputs."arturo-v0_9_7_2".repo  = "arturo";
  inputs."arturo-v0_9_7_2".type  = "github";
  inputs."arturo-v0_9_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_7_4".dir   = "v0_9_7_4";
  inputs."arturo-v0_9_7_4".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_7_4".ref   = "master";
  inputs."arturo-v0_9_7_4".repo  = "arturo";
  inputs."arturo-v0_9_7_4".type  = "github";
  inputs."arturo-v0_9_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_75".dir   = "v0_9_75";
  inputs."arturo-v0_9_75".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_75".ref   = "master";
  inputs."arturo-v0_9_75".repo  = "arturo";
  inputs."arturo-v0_9_75".type  = "github";
  inputs."arturo-v0_9_75".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_75".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_76".dir   = "v0_9_76";
  inputs."arturo-v0_9_76".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_76".ref   = "master";
  inputs."arturo-v0_9_76".repo  = "arturo";
  inputs."arturo-v0_9_76".type  = "github";
  inputs."arturo-v0_9_76".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_76".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_77".dir   = "v0_9_77";
  inputs."arturo-v0_9_77".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_77".ref   = "master";
  inputs."arturo-v0_9_77".repo  = "arturo";
  inputs."arturo-v0_9_77".type  = "github";
  inputs."arturo-v0_9_77".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_77".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_78".dir   = "v0_9_78";
  inputs."arturo-v0_9_78".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_78".ref   = "master";
  inputs."arturo-v0_9_78".repo  = "arturo";
  inputs."arturo-v0_9_78".type  = "github";
  inputs."arturo-v0_9_78".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_78".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arturo-v0_9_80".dir   = "v0_9_80";
  inputs."arturo-v0_9_80".owner = "nim-nix-pkgs";
  inputs."arturo-v0_9_80".ref   = "master";
  inputs."arturo-v0_9_80".repo  = "arturo";
  inputs."arturo-v0_9_80".type  = "github";
  inputs."arturo-v0_9_80".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arturo-v0_9_80".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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