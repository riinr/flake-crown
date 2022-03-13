{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mddoc-master".dir   = "master";
  inputs."mddoc-master".owner = "nim-nix-pkgs";
  inputs."mddoc-master".ref   = "master";
  inputs."mddoc-master".repo  = "mddoc";
  inputs."mddoc-master".type  = "github";
  inputs."mddoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_1".dir   = "0_0_1";
  inputs."mddoc-0_0_1".owner = "nim-nix-pkgs";
  inputs."mddoc-0_0_1".ref   = "master";
  inputs."mddoc-0_0_1".repo  = "mddoc";
  inputs."mddoc-0_0_1".type  = "github";
  inputs."mddoc-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_2".dir   = "0_0_2";
  inputs."mddoc-0_0_2".owner = "nim-nix-pkgs";
  inputs."mddoc-0_0_2".ref   = "master";
  inputs."mddoc-0_0_2".repo  = "mddoc";
  inputs."mddoc-0_0_2".type  = "github";
  inputs."mddoc-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_3".dir   = "0_0_3";
  inputs."mddoc-0_0_3".owner = "nim-nix-pkgs";
  inputs."mddoc-0_0_3".ref   = "master";
  inputs."mddoc-0_0_3".repo  = "mddoc";
  inputs."mddoc-0_0_3".type  = "github";
  inputs."mddoc-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-0_0_4".dir   = "0_0_4";
  inputs."mddoc-0_0_4".owner = "nim-nix-pkgs";
  inputs."mddoc-0_0_4".ref   = "master";
  inputs."mddoc-0_0_4".repo  = "mddoc";
  inputs."mddoc-0_0_4".type  = "github";
  inputs."mddoc-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mddoc-v0_0_4".dir   = "v0_0_4";
  inputs."mddoc-v0_0_4".owner = "nim-nix-pkgs";
  inputs."mddoc-v0_0_4".ref   = "master";
  inputs."mddoc-v0_0_4".repo  = "mddoc";
  inputs."mddoc-v0_0_4".type  = "github";
  inputs."mddoc-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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