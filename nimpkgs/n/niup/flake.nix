{
  description = ''IUP FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niup-master".dir   = "master";
  inputs."niup-master".owner = "nim-nix-pkgs";
  inputs."niup-master".ref   = "master";
  inputs."niup-master".repo  = "niup";
  inputs."niup-master".type  = "github";
  inputs."niup-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_0".dir   = "3_27_0";
  inputs."niup-3_27_0".owner = "nim-nix-pkgs";
  inputs."niup-3_27_0".ref   = "master";
  inputs."niup-3_27_0".repo  = "niup";
  inputs."niup-3_27_0".type  = "github";
  inputs."niup-3_27_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_1".dir   = "3_27_1";
  inputs."niup-3_27_1".owner = "nim-nix-pkgs";
  inputs."niup-3_27_1".ref   = "master";
  inputs."niup-3_27_1".repo  = "niup";
  inputs."niup-3_27_1".type  = "github";
  inputs."niup-3_27_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_2".dir   = "3_27_2";
  inputs."niup-3_27_2".owner = "nim-nix-pkgs";
  inputs."niup-3_27_2".ref   = "master";
  inputs."niup-3_27_2".repo  = "niup";
  inputs."niup-3_27_2".type  = "github";
  inputs."niup-3_27_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_3".dir   = "3_27_3";
  inputs."niup-3_27_3".owner = "nim-nix-pkgs";
  inputs."niup-3_27_3".ref   = "master";
  inputs."niup-3_27_3".repo  = "niup";
  inputs."niup-3_27_3".type  = "github";
  inputs."niup-3_27_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_4".dir   = "3_27_4";
  inputs."niup-3_27_4".owner = "nim-nix-pkgs";
  inputs."niup-3_27_4".ref   = "master";
  inputs."niup-3_27_4".repo  = "niup";
  inputs."niup-3_27_4".type  = "github";
  inputs."niup-3_27_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_5".dir   = "3_27_5";
  inputs."niup-3_27_5".owner = "nim-nix-pkgs";
  inputs."niup-3_27_5".ref   = "master";
  inputs."niup-3_27_5".repo  = "niup";
  inputs."niup-3_27_5".type  = "github";
  inputs."niup-3_27_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_6".dir   = "3_27_6";
  inputs."niup-3_27_6".owner = "nim-nix-pkgs";
  inputs."niup-3_27_6".ref   = "master";
  inputs."niup-3_27_6".repo  = "niup";
  inputs."niup-3_27_6".type  = "github";
  inputs."niup-3_27_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_7".dir   = "3_27_7";
  inputs."niup-3_27_7".owner = "nim-nix-pkgs";
  inputs."niup-3_27_7".ref   = "master";
  inputs."niup-3_27_7".repo  = "niup";
  inputs."niup-3_27_7".type  = "github";
  inputs."niup-3_27_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_27_8".dir   = "3_27_8";
  inputs."niup-3_27_8".owner = "nim-nix-pkgs";
  inputs."niup-3_27_8".ref   = "master";
  inputs."niup-3_27_8".repo  = "niup";
  inputs."niup-3_27_8".type  = "github";
  inputs."niup-3_27_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_27_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_0".dir   = "3_28_0";
  inputs."niup-3_28_0".owner = "nim-nix-pkgs";
  inputs."niup-3_28_0".ref   = "master";
  inputs."niup-3_28_0".repo  = "niup";
  inputs."niup-3_28_0".type  = "github";
  inputs."niup-3_28_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_1".dir   = "3_28_1";
  inputs."niup-3_28_1".owner = "nim-nix-pkgs";
  inputs."niup-3_28_1".ref   = "master";
  inputs."niup-3_28_1".repo  = "niup";
  inputs."niup-3_28_1".type  = "github";
  inputs."niup-3_28_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_28_2".dir   = "3_28_2";
  inputs."niup-3_28_2".owner = "nim-nix-pkgs";
  inputs."niup-3_28_2".ref   = "master";
  inputs."niup-3_28_2".repo  = "niup";
  inputs."niup-3_28_2".type  = "github";
  inputs."niup-3_28_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_28_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_29_0".dir   = "3_29_0";
  inputs."niup-3_29_0".owner = "nim-nix-pkgs";
  inputs."niup-3_29_0".ref   = "master";
  inputs."niup-3_29_0".repo  = "niup";
  inputs."niup-3_29_0".type  = "github";
  inputs."niup-3_29_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_29_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_29_1".dir   = "3_29_1";
  inputs."niup-3_29_1".owner = "nim-nix-pkgs";
  inputs."niup-3_29_1".ref   = "master";
  inputs."niup-3_29_1".repo  = "niup";
  inputs."niup-3_29_1".type  = "github";
  inputs."niup-3_29_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_29_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_0".dir   = "3_30_0";
  inputs."niup-3_30_0".owner = "nim-nix-pkgs";
  inputs."niup-3_30_0".ref   = "master";
  inputs."niup-3_30_0".repo  = "niup";
  inputs."niup-3_30_0".type  = "github";
  inputs."niup-3_30_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_1".dir   = "3_30_1";
  inputs."niup-3_30_1".owner = "nim-nix-pkgs";
  inputs."niup-3_30_1".ref   = "master";
  inputs."niup-3_30_1".repo  = "niup";
  inputs."niup-3_30_1".type  = "github";
  inputs."niup-3_30_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-3_30_2".dir   = "3_30_2";
  inputs."niup-3_30_2".owner = "nim-nix-pkgs";
  inputs."niup-3_30_2".ref   = "master";
  inputs."niup-3_30_2".repo  = "niup";
  inputs."niup-3_30_2".type  = "github";
  inputs."niup-3_30_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-3_30_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_5".dir   = "v3_30_5";
  inputs."niup-v3_30_5".owner = "nim-nix-pkgs";
  inputs."niup-v3_30_5".ref   = "master";
  inputs."niup-v3_30_5".repo  = "niup";
  inputs."niup-v3_30_5".type  = "github";
  inputs."niup-v3_30_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_6".dir   = "v3_30_6";
  inputs."niup-v3_30_6".owner = "nim-nix-pkgs";
  inputs."niup-v3_30_6".ref   = "master";
  inputs."niup-v3_30_6".repo  = "niup";
  inputs."niup-v3_30_6".type  = "github";
  inputs."niup-v3_30_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niup-v3_30_7".dir   = "v3_30_7";
  inputs."niup-v3_30_7".owner = "nim-nix-pkgs";
  inputs."niup-v3_30_7".ref   = "master";
  inputs."niup-v3_30_7".repo  = "niup";
  inputs."niup-v3_30_7".type  = "github";
  inputs."niup-v3_30_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niup-v3_30_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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