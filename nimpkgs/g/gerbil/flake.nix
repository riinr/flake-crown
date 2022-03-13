{
  description = ''A dynamic website generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gerbil-master".dir   = "master";
  inputs."gerbil-master".owner = "nim-nix-pkgs";
  inputs."gerbil-master".ref   = "master";
  inputs."gerbil-master".repo  = "gerbil";
  inputs."gerbil-master".type  = "github";
  inputs."gerbil-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gerbil-v0_1_0".dir   = "v0_1_0";
  inputs."gerbil-v0_1_0".owner = "nim-nix-pkgs";
  inputs."gerbil-v0_1_0".ref   = "master";
  inputs."gerbil-v0_1_0".repo  = "gerbil";
  inputs."gerbil-v0_1_0".type  = "github";
  inputs."gerbil-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gerbil-v0_1_1".dir   = "v0_1_1";
  inputs."gerbil-v0_1_1".owner = "nim-nix-pkgs";
  inputs."gerbil-v0_1_1".ref   = "master";
  inputs."gerbil-v0_1_1".repo  = "gerbil";
  inputs."gerbil-v0_1_1".type  = "github";
  inputs."gerbil-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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