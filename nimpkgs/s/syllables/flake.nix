{
  description = ''Syllable estimation for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syllables-main".dir   = "main";
  inputs."syllables-main".owner = "nim-nix-pkgs";
  inputs."syllables-main".ref   = "master";
  inputs."syllables-main".repo  = "syllables";
  inputs."syllables-main".type  = "github";
  inputs."syllables-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syllables-v1_0_0".dir   = "v1_0_0";
  inputs."syllables-v1_0_0".owner = "nim-nix-pkgs";
  inputs."syllables-v1_0_0".ref   = "master";
  inputs."syllables-v1_0_0".repo  = "syllables";
  inputs."syllables-v1_0_0".type  = "github";
  inputs."syllables-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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