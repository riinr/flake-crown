{
  description = ''Spatial data structures for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spacy-master".dir   = "master";
  inputs."spacy-master".owner = "nim-nix-pkgs";
  inputs."spacy-master".ref   = "master";
  inputs."spacy-master".repo  = "spacy";
  inputs."spacy-master".type  = "github";
  inputs."spacy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacy-0_0_1".dir   = "0_0_1";
  inputs."spacy-0_0_1".owner = "nim-nix-pkgs";
  inputs."spacy-0_0_1".ref   = "master";
  inputs."spacy-0_0_1".repo  = "spacy";
  inputs."spacy-0_0_1".type  = "github";
  inputs."spacy-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacy-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacy-0_0_2".dir   = "0_0_2";
  inputs."spacy-0_0_2".owner = "nim-nix-pkgs";
  inputs."spacy-0_0_2".ref   = "master";
  inputs."spacy-0_0_2".repo  = "spacy";
  inputs."spacy-0_0_2".type  = "github";
  inputs."spacy-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacy-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacy-0_0_3".dir   = "0_0_3";
  inputs."spacy-0_0_3".owner = "nim-nix-pkgs";
  inputs."spacy-0_0_3".ref   = "master";
  inputs."spacy-0_0_3".repo  = "spacy";
  inputs."spacy-0_0_3".type  = "github";
  inputs."spacy-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacy-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacy-0_0_4".dir   = "0_0_4";
  inputs."spacy-0_0_4".owner = "nim-nix-pkgs";
  inputs."spacy-0_0_4".ref   = "master";
  inputs."spacy-0_0_4".repo  = "spacy";
  inputs."spacy-0_0_4".type  = "github";
  inputs."spacy-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacy-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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