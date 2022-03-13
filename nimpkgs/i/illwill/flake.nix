{
  description = ''A curses inspired simple cross-platform console library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."illwill-master".dir   = "master";
  inputs."illwill-master".owner = "nim-nix-pkgs";
  inputs."illwill-master".ref   = "master";
  inputs."illwill-master".repo  = "illwill";
  inputs."illwill-master".type  = "github";
  inputs."illwill-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-0_1_0".dir   = "0_1_0";
  inputs."illwill-0_1_0".owner = "nim-nix-pkgs";
  inputs."illwill-0_1_0".ref   = "master";
  inputs."illwill-0_1_0".repo  = "illwill";
  inputs."illwill-0_1_0".type  = "github";
  inputs."illwill-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-v0_1_0".dir   = "v0_1_0";
  inputs."illwill-v0_1_0".owner = "nim-nix-pkgs";
  inputs."illwill-v0_1_0".ref   = "master";
  inputs."illwill-v0_1_0".repo  = "illwill";
  inputs."illwill-v0_1_0".type  = "github";
  inputs."illwill-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-v0_2_0".dir   = "v0_2_0";
  inputs."illwill-v0_2_0".owner = "nim-nix-pkgs";
  inputs."illwill-v0_2_0".ref   = "master";
  inputs."illwill-v0_2_0".repo  = "illwill";
  inputs."illwill-v0_2_0".type  = "github";
  inputs."illwill-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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