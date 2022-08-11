{
  description = ''Thesaurus CLI/Library & Analyzer in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."thes-main".dir   = "main";
  inputs."thes-main".owner = "nim-nix-pkgs";
  inputs."thes-main".ref   = "master";
  inputs."thes-main".repo  = "thes";
  inputs."thes-main".type  = "github";
  inputs."thes-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."thes-0_1".dir   = "0_1";
  inputs."thes-0_1".owner = "nim-nix-pkgs";
  inputs."thes-0_1".ref   = "master";
  inputs."thes-0_1".repo  = "thes";
  inputs."thes-0_1".type  = "github";
  inputs."thes-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."thes-0_1_1".dir   = "0_1_1";
  inputs."thes-0_1_1".owner = "nim-nix-pkgs";
  inputs."thes-0_1_1".ref   = "master";
  inputs."thes-0_1_1".repo  = "thes";
  inputs."thes-0_1_1".type  = "github";
  inputs."thes-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."thes-0_2".dir   = "0_2";
  inputs."thes-0_2".owner = "nim-nix-pkgs";
  inputs."thes-0_2".ref   = "master";
  inputs."thes-0_2".repo  = "thes";
  inputs."thes-0_2".type  = "github";
  inputs."thes-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."thes-0_2_1".dir   = "0_2_1";
  inputs."thes-0_2_1".owner = "nim-nix-pkgs";
  inputs."thes-0_2_1".ref   = "master";
  inputs."thes-0_2_1".repo  = "thes";
  inputs."thes-0_2_1".type  = "github";
  inputs."thes-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."thes-0_3_0".dir   = "0_3_0";
  inputs."thes-0_3_0".owner = "nim-nix-pkgs";
  inputs."thes-0_3_0".ref   = "master";
  inputs."thes-0_3_0".repo  = "thes";
  inputs."thes-0_3_0".type  = "github";
  inputs."thes-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."thes-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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