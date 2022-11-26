{
  description = ''Render LaTeX math as multiline Unicode text'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matext-master".dir   = "master";
  inputs."matext-master".owner = "nim-nix-pkgs";
  inputs."matext-master".ref   = "master";
  inputs."matext-master".repo  = "matext";
  inputs."matext-master".type  = "github";
  inputs."matext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_10_12".dir   = "2022_10_12";
  inputs."matext-2022_10_12".owner = "nim-nix-pkgs";
  inputs."matext-2022_10_12".ref   = "master";
  inputs."matext-2022_10_12".repo  = "matext";
  inputs."matext-2022_10_12".type  = "github";
  inputs."matext-2022_10_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_10_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_10_13".dir   = "2022_10_13";
  inputs."matext-2022_10_13".owner = "nim-nix-pkgs";
  inputs."matext-2022_10_13".ref   = "master";
  inputs."matext-2022_10_13".repo  = "matext";
  inputs."matext-2022_10_13".type  = "github";
  inputs."matext-2022_10_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_10_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_11_1".dir   = "2022_11_1";
  inputs."matext-2022_11_1".owner = "nim-nix-pkgs";
  inputs."matext-2022_11_1".ref   = "master";
  inputs."matext-2022_11_1".repo  = "matext";
  inputs."matext-2022_11_1".type  = "github";
  inputs."matext-2022_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_11_9".dir   = "2022_11_9";
  inputs."matext-2022_11_9".owner = "nim-nix-pkgs";
  inputs."matext-2022_11_9".ref   = "master";
  inputs."matext-2022_11_9".repo  = "matext";
  inputs."matext-2022_11_9".type  = "github";
  inputs."matext-2022_11_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_11_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_5_13".dir   = "2022_5_13";
  inputs."matext-2022_5_13".owner = "nim-nix-pkgs";
  inputs."matext-2022_5_13".ref   = "master";
  inputs."matext-2022_5_13".repo  = "matext";
  inputs."matext-2022_5_13".type  = "github";
  inputs."matext-2022_5_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_5_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_6_21".dir   = "2022_6_21";
  inputs."matext-2022_6_21".owner = "nim-nix-pkgs";
  inputs."matext-2022_6_21".ref   = "master";
  inputs."matext-2022_6_21".repo  = "matext";
  inputs."matext-2022_6_21".type  = "github";
  inputs."matext-2022_6_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_6_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_6_27".dir   = "2022_6_27";
  inputs."matext-2022_6_27".owner = "nim-nix-pkgs";
  inputs."matext-2022_6_27".ref   = "master";
  inputs."matext-2022_6_27".repo  = "matext";
  inputs."matext-2022_6_27".type  = "github";
  inputs."matext-2022_6_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_6_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_7_20".dir   = "2022_7_20";
  inputs."matext-2022_7_20".owner = "nim-nix-pkgs";
  inputs."matext-2022_7_20".ref   = "master";
  inputs."matext-2022_7_20".repo  = "matext";
  inputs."matext-2022_7_20".type  = "github";
  inputs."matext-2022_7_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_7_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_7_6".dir   = "2022_7_6";
  inputs."matext-2022_7_6".owner = "nim-nix-pkgs";
  inputs."matext-2022_7_6".ref   = "master";
  inputs."matext-2022_7_6".repo  = "matext";
  inputs."matext-2022_7_6".type  = "github";
  inputs."matext-2022_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext-2022_9_3".dir   = "2022_9_3";
  inputs."matext-2022_9_3".owner = "nim-nix-pkgs";
  inputs."matext-2022_9_3".ref   = "master";
  inputs."matext-2022_9_3".repo  = "matext";
  inputs."matext-2022_9_3".type  = "github";
  inputs."matext-2022_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext-2022_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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