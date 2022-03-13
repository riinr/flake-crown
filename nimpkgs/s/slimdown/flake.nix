{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slimdown-master".dir   = "master";
  inputs."slimdown-master".owner = "nim-nix-pkgs";
  inputs."slimdown-master".ref   = "master";
  inputs."slimdown-master".repo  = "slimdown";
  inputs."slimdown-master".type  = "github";
  inputs."slimdown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slimdown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slimdown-0_0_1".dir   = "0_0_1";
  inputs."slimdown-0_0_1".owner = "nim-nix-pkgs";
  inputs."slimdown-0_0_1".ref   = "master";
  inputs."slimdown-0_0_1".repo  = "slimdown";
  inputs."slimdown-0_0_1".type  = "github";
  inputs."slimdown-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slimdown-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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