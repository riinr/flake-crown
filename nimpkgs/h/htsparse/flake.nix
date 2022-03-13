{
  description = ''Nim wrappers for tree-sitter parser grammars'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htsparse-master".dir   = "master";
  inputs."htsparse-master".owner = "nim-nix-pkgs";
  inputs."htsparse-master".ref   = "master";
  inputs."htsparse-master".repo  = "htsparse";
  inputs."htsparse-master".type  = "github";
  inputs."htsparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_1".dir   = "0_1_1";
  inputs."htsparse-0_1_1".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_1".ref   = "master";
  inputs."htsparse-0_1_1".repo  = "htsparse";
  inputs."htsparse-0_1_1".type  = "github";
  inputs."htsparse-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_10".dir   = "0_1_10";
  inputs."htsparse-0_1_10".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_10".ref   = "master";
  inputs."htsparse-0_1_10".repo  = "htsparse";
  inputs."htsparse-0_1_10".type  = "github";
  inputs."htsparse-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_11".dir   = "0_1_11";
  inputs."htsparse-0_1_11".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_11".ref   = "master";
  inputs."htsparse-0_1_11".repo  = "htsparse";
  inputs."htsparse-0_1_11".type  = "github";
  inputs."htsparse-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_12".dir   = "0_1_12";
  inputs."htsparse-0_1_12".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_12".ref   = "master";
  inputs."htsparse-0_1_12".repo  = "htsparse";
  inputs."htsparse-0_1_12".type  = "github";
  inputs."htsparse-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_13".dir   = "0_1_13";
  inputs."htsparse-0_1_13".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_13".ref   = "master";
  inputs."htsparse-0_1_13".repo  = "htsparse";
  inputs."htsparse-0_1_13".type  = "github";
  inputs."htsparse-0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_14".dir   = "0_1_14";
  inputs."htsparse-0_1_14".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_14".ref   = "master";
  inputs."htsparse-0_1_14".repo  = "htsparse";
  inputs."htsparse-0_1_14".type  = "github";
  inputs."htsparse-0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_2".dir   = "0_1_2";
  inputs."htsparse-0_1_2".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_2".ref   = "master";
  inputs."htsparse-0_1_2".repo  = "htsparse";
  inputs."htsparse-0_1_2".type  = "github";
  inputs."htsparse-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_3".dir   = "0_1_3";
  inputs."htsparse-0_1_3".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_3".ref   = "master";
  inputs."htsparse-0_1_3".repo  = "htsparse";
  inputs."htsparse-0_1_3".type  = "github";
  inputs."htsparse-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_4".dir   = "0_1_4";
  inputs."htsparse-0_1_4".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_4".ref   = "master";
  inputs."htsparse-0_1_4".repo  = "htsparse";
  inputs."htsparse-0_1_4".type  = "github";
  inputs."htsparse-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_5".dir   = "0_1_5";
  inputs."htsparse-0_1_5".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_5".ref   = "master";
  inputs."htsparse-0_1_5".repo  = "htsparse";
  inputs."htsparse-0_1_5".type  = "github";
  inputs."htsparse-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_6".dir   = "0_1_6";
  inputs."htsparse-0_1_6".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_6".ref   = "master";
  inputs."htsparse-0_1_6".repo  = "htsparse";
  inputs."htsparse-0_1_6".type  = "github";
  inputs."htsparse-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_7".dir   = "0_1_7";
  inputs."htsparse-0_1_7".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_7".ref   = "master";
  inputs."htsparse-0_1_7".repo  = "htsparse";
  inputs."htsparse-0_1_7".type  = "github";
  inputs."htsparse-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_8".dir   = "0_1_8";
  inputs."htsparse-0_1_8".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_8".ref   = "master";
  inputs."htsparse-0_1_8".repo  = "htsparse";
  inputs."htsparse-0_1_8".type  = "github";
  inputs."htsparse-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htsparse-0_1_9".dir   = "0_1_9";
  inputs."htsparse-0_1_9".owner = "nim-nix-pkgs";
  inputs."htsparse-0_1_9".ref   = "master";
  inputs."htsparse-0_1_9".repo  = "htsparse";
  inputs."htsparse-0_1_9".type  = "github";
  inputs."htsparse-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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