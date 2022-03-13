{
  description = ''A DFA based regex engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nregex-master".dir   = "master";
  inputs."nregex-master".owner = "nim-nix-pkgs";
  inputs."nregex-master".ref   = "master";
  inputs."nregex-master".repo  = "nregex";
  inputs."nregex-master".type  = "github";
  inputs."nregex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_1".dir   = "v0_0_1";
  inputs."nregex-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nregex-v0_0_1".ref   = "master";
  inputs."nregex-v0_0_1".repo  = "nregex";
  inputs."nregex-v0_0_1".type  = "github";
  inputs."nregex-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_2".dir   = "v0_0_2";
  inputs."nregex-v0_0_2".owner = "nim-nix-pkgs";
  inputs."nregex-v0_0_2".ref   = "master";
  inputs."nregex-v0_0_2".repo  = "nregex";
  inputs."nregex-v0_0_2".type  = "github";
  inputs."nregex-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_3".dir   = "v0_0_3";
  inputs."nregex-v0_0_3".owner = "nim-nix-pkgs";
  inputs."nregex-v0_0_3".ref   = "master";
  inputs."nregex-v0_0_3".repo  = "nregex";
  inputs."nregex-v0_0_3".type  = "github";
  inputs."nregex-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_4".dir   = "v0_0_4";
  inputs."nregex-v0_0_4".owner = "nim-nix-pkgs";
  inputs."nregex-v0_0_4".ref   = "master";
  inputs."nregex-v0_0_4".repo  = "nregex";
  inputs."nregex-v0_0_4".type  = "github";
  inputs."nregex-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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