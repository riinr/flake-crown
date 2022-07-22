{
  description = ''A library to generate xml and html tags'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tagger-develop".dir   = "develop";
  inputs."tagger-develop".owner = "nim-nix-pkgs";
  inputs."tagger-develop".ref   = "master";
  inputs."tagger-develop".repo  = "tagger";
  inputs."tagger-develop".type  = "github";
  inputs."tagger-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tagger-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tagger-main".dir   = "main";
  inputs."tagger-main".owner = "nim-nix-pkgs";
  inputs."tagger-main".ref   = "master";
  inputs."tagger-main".repo  = "tagger";
  inputs."tagger-main".type  = "github";
  inputs."tagger-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tagger-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tagger-v0_1_0".dir   = "v0_1_0";
  inputs."tagger-v0_1_0".owner = "nim-nix-pkgs";
  inputs."tagger-v0_1_0".ref   = "master";
  inputs."tagger-v0_1_0".repo  = "tagger";
  inputs."tagger-v0_1_0".type  = "github";
  inputs."tagger-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tagger-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tagger-v0_2_0".dir   = "v0_2_0";
  inputs."tagger-v0_2_0".owner = "nim-nix-pkgs";
  inputs."tagger-v0_2_0".ref   = "master";
  inputs."tagger-v0_2_0".repo  = "tagger";
  inputs."tagger-v0_2_0".type  = "github";
  inputs."tagger-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tagger-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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