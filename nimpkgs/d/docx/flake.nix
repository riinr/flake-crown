{
  description = ''A simple docx reader.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."docx-master".dir   = "master";
  inputs."docx-master".owner = "nim-nix-pkgs";
  inputs."docx-master".ref   = "master";
  inputs."docx-master".repo  = "docx";
  inputs."docx-master".type  = "github";
  inputs."docx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_0_2".dir   = "v0_0_2";
  inputs."docx-v0_0_2".owner = "nim-nix-pkgs";
  inputs."docx-v0_0_2".ref   = "master";
  inputs."docx-v0_0_2".repo  = "docx";
  inputs."docx-v0_0_2".type  = "github";
  inputs."docx-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_0".dir   = "v0_1_0";
  inputs."docx-v0_1_0".owner = "nim-nix-pkgs";
  inputs."docx-v0_1_0".ref   = "master";
  inputs."docx-v0_1_0".repo  = "docx";
  inputs."docx-v0_1_0".type  = "github";
  inputs."docx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_2".dir   = "v0_1_2";
  inputs."docx-v0_1_2".owner = "nim-nix-pkgs";
  inputs."docx-v0_1_2".ref   = "master";
  inputs."docx-v0_1_2".repo  = "docx";
  inputs."docx-v0_1_2".type  = "github";
  inputs."docx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_4".dir   = "v0_1_4";
  inputs."docx-v0_1_4".owner = "nim-nix-pkgs";
  inputs."docx-v0_1_4".ref   = "master";
  inputs."docx-v0_1_4".repo  = "docx";
  inputs."docx-v0_1_4".type  = "github";
  inputs."docx-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_6".dir   = "v0_1_6";
  inputs."docx-v0_1_6".owner = "nim-nix-pkgs";
  inputs."docx-v0_1_6".ref   = "master";
  inputs."docx-v0_1_6".repo  = "docx";
  inputs."docx-v0_1_6".type  = "github";
  inputs."docx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docx-v0_1_8".dir   = "v0_1_8";
  inputs."docx-v0_1_8".owner = "nim-nix-pkgs";
  inputs."docx-v0_1_8".ref   = "master";
  inputs."docx-v0_1_8".repo  = "docx";
  inputs."docx-v0_1_8".type  = "github";
  inputs."docx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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