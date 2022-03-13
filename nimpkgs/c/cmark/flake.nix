{
  description = ''libcmark wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmark-master".dir   = "master";
  inputs."cmark-master".owner = "nim-nix-pkgs";
  inputs."cmark-master".ref   = "master";
  inputs."cmark-master".repo  = "cmark";
  inputs."cmark-master".type  = "github";
  inputs."cmark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cmark-0_1_0".dir   = "0_1_0";
  inputs."cmark-0_1_0".owner = "nim-nix-pkgs";
  inputs."cmark-0_1_0".ref   = "master";
  inputs."cmark-0_1_0".repo  = "cmark";
  inputs."cmark-0_1_0".type  = "github";
  inputs."cmark-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmark-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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