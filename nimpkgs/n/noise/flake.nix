{
  description = ''Nim implementation of linenoise command line editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."noise-master".dir   = "master";
  inputs."noise-master".owner = "nim-nix-pkgs";
  inputs."noise-master".ref   = "master";
  inputs."noise-master".repo  = "noise";
  inputs."noise-master".type  = "github";
  inputs."noise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noise-v0_1_4".dir   = "v0_1_4";
  inputs."noise-v0_1_4".owner = "nim-nix-pkgs";
  inputs."noise-v0_1_4".ref   = "master";
  inputs."noise-v0_1_4".repo  = "noise";
  inputs."noise-v0_1_4".type  = "github";
  inputs."noise-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noise-v0_1_6".dir   = "v0_1_6";
  inputs."noise-v0_1_6".owner = "nim-nix-pkgs";
  inputs."noise-v0_1_6".ref   = "master";
  inputs."noise-v0_1_6".repo  = "noise";
  inputs."noise-v0_1_6".type  = "github";
  inputs."noise-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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