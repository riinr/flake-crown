{
  description = ''Converts html to karax.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."html2karax-master".dir   = "master";
  inputs."html2karax-master".owner = "nim-nix-pkgs";
  inputs."html2karax-master".ref   = "master";
  inputs."html2karax-master".repo  = "html2karax";
  inputs."html2karax-master".type  = "github";
  inputs."html2karax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_0_0".dir   = "v1_0_0";
  inputs."html2karax-v1_0_0".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_0_0".ref   = "master";
  inputs."html2karax-v1_0_0".repo  = "html2karax";
  inputs."html2karax-v1_0_0".type  = "github";
  inputs."html2karax-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_0_1".dir   = "v1_0_1";
  inputs."html2karax-v1_0_1".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_0_1".ref   = "master";
  inputs."html2karax-v1_0_1".repo  = "html2karax";
  inputs."html2karax-v1_0_1".type  = "github";
  inputs."html2karax-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_0".dir   = "v1_1_0";
  inputs."html2karax-v1_1_0".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_1_0".ref   = "master";
  inputs."html2karax-v1_1_0".repo  = "html2karax";
  inputs."html2karax-v1_1_0".type  = "github";
  inputs."html2karax-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_1".dir   = "v1_1_1";
  inputs."html2karax-v1_1_1".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_1_1".ref   = "master";
  inputs."html2karax-v1_1_1".repo  = "html2karax";
  inputs."html2karax-v1_1_1".type  = "github";
  inputs."html2karax-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_2".dir   = "v1_1_2";
  inputs."html2karax-v1_1_2".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_1_2".ref   = "master";
  inputs."html2karax-v1_1_2".repo  = "html2karax";
  inputs."html2karax-v1_1_2".type  = "github";
  inputs."html2karax-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_3".dir   = "v1_1_3";
  inputs."html2karax-v1_1_3".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_1_3".ref   = "master";
  inputs."html2karax-v1_1_3".repo  = "html2karax";
  inputs."html2karax-v1_1_3".type  = "github";
  inputs."html2karax-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_2_0".dir   = "v1_2_0";
  inputs."html2karax-v1_2_0".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_2_0".ref   = "master";
  inputs."html2karax-v1_2_0".repo  = "html2karax";
  inputs."html2karax-v1_2_0".type  = "github";
  inputs."html2karax-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_2_1".dir   = "v1_2_1";
  inputs."html2karax-v1_2_1".owner = "nim-nix-pkgs";
  inputs."html2karax-v1_2_1".ref   = "master";
  inputs."html2karax-v1_2_1".repo  = "html2karax";
  inputs."html2karax-v1_2_1".type  = "github";
  inputs."html2karax-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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