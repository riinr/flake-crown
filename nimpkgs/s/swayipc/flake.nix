{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."swayipc-master".dir   = "master";
  inputs."swayipc-master".owner = "nim-nix-pkgs";
  inputs."swayipc-master".ref   = "master";
  inputs."swayipc-master".repo  = "swayipc";
  inputs."swayipc-master".type  = "github";
  inputs."swayipc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-1_1_0".dir   = "1_1_0";
  inputs."swayipc-1_1_0".owner = "nim-nix-pkgs";
  inputs."swayipc-1_1_0".ref   = "master";
  inputs."swayipc-1_1_0".repo  = "swayipc";
  inputs."swayipc-1_1_0".type  = "github";
  inputs."swayipc-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-1_1_1".dir   = "1_1_1";
  inputs."swayipc-1_1_1".owner = "nim-nix-pkgs";
  inputs."swayipc-1_1_1".ref   = "master";
  inputs."swayipc-1_1_1".repo  = "swayipc";
  inputs."swayipc-1_1_1".type  = "github";
  inputs."swayipc-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_0".dir   = "2_0_0";
  inputs."swayipc-2_0_0".owner = "nim-nix-pkgs";
  inputs."swayipc-2_0_0".ref   = "master";
  inputs."swayipc-2_0_0".repo  = "swayipc";
  inputs."swayipc-2_0_0".type  = "github";
  inputs."swayipc-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_1".dir   = "2_0_1";
  inputs."swayipc-2_0_1".owner = "nim-nix-pkgs";
  inputs."swayipc-2_0_1".ref   = "master";
  inputs."swayipc-2_0_1".repo  = "swayipc";
  inputs."swayipc-2_0_1".type  = "github";
  inputs."swayipc-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_2".dir   = "2_0_2";
  inputs."swayipc-2_0_2".owner = "nim-nix-pkgs";
  inputs."swayipc-2_0_2".ref   = "master";
  inputs."swayipc-2_0_2".repo  = "swayipc";
  inputs."swayipc-2_0_2".type  = "github";
  inputs."swayipc-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_3".dir   = "2_0_3";
  inputs."swayipc-2_0_3".owner = "nim-nix-pkgs";
  inputs."swayipc-2_0_3".ref   = "master";
  inputs."swayipc-2_0_3".repo  = "swayipc";
  inputs."swayipc-2_0_3".type  = "github";
  inputs."swayipc-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_0_0".dir   = "3_0_0";
  inputs."swayipc-3_0_0".owner = "nim-nix-pkgs";
  inputs."swayipc-3_0_0".ref   = "master";
  inputs."swayipc-3_0_0".repo  = "swayipc";
  inputs."swayipc-3_0_0".type  = "github";
  inputs."swayipc-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_0_1".dir   = "3_0_1";
  inputs."swayipc-3_0_1".owner = "nim-nix-pkgs";
  inputs."swayipc-3_0_1".ref   = "master";
  inputs."swayipc-3_0_1".repo  = "swayipc";
  inputs."swayipc-3_0_1".type  = "github";
  inputs."swayipc-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_0".dir   = "3_1_0";
  inputs."swayipc-3_1_0".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_0".ref   = "master";
  inputs."swayipc-3_1_0".repo  = "swayipc";
  inputs."swayipc-3_1_0".type  = "github";
  inputs."swayipc-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_1".dir   = "3_1_1";
  inputs."swayipc-3_1_1".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_1".ref   = "master";
  inputs."swayipc-3_1_1".repo  = "swayipc";
  inputs."swayipc-3_1_1".type  = "github";
  inputs."swayipc-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_2".dir   = "3_1_2";
  inputs."swayipc-3_1_2".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_2".ref   = "master";
  inputs."swayipc-3_1_2".repo  = "swayipc";
  inputs."swayipc-3_1_2".type  = "github";
  inputs."swayipc-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_3".dir   = "3_1_3";
  inputs."swayipc-3_1_3".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_3".ref   = "master";
  inputs."swayipc-3_1_3".repo  = "swayipc";
  inputs."swayipc-3_1_3".type  = "github";
  inputs."swayipc-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_4".dir   = "3_1_4";
  inputs."swayipc-3_1_4".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_4".ref   = "master";
  inputs."swayipc-3_1_4".repo  = "swayipc";
  inputs."swayipc-3_1_4".type  = "github";
  inputs."swayipc-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_5".dir   = "3_1_5";
  inputs."swayipc-3_1_5".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_5".ref   = "master";
  inputs."swayipc-3_1_5".repo  = "swayipc";
  inputs."swayipc-3_1_5".type  = "github";
  inputs."swayipc-3_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_6".dir   = "3_1_6";
  inputs."swayipc-3_1_6".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_6".ref   = "master";
  inputs."swayipc-3_1_6".repo  = "swayipc";
  inputs."swayipc-3_1_6".type  = "github";
  inputs."swayipc-3_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_7".dir   = "3_1_7";
  inputs."swayipc-3_1_7".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_7".ref   = "master";
  inputs."swayipc-3_1_7".repo  = "swayipc";
  inputs."swayipc-3_1_7".type  = "github";
  inputs."swayipc-3_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_8".dir   = "3_1_8";
  inputs."swayipc-3_1_8".owner = "nim-nix-pkgs";
  inputs."swayipc-3_1_8".ref   = "master";
  inputs."swayipc-3_1_8".repo  = "swayipc";
  inputs."swayipc-3_1_8".type  = "github";
  inputs."swayipc-3_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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