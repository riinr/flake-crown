{
  description = ''Moss (Measure of Software Similarity) implementation in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moss_nim-main".dir   = "main";
  inputs."moss_nim-main".owner = "nim-nix-pkgs";
  inputs."moss_nim-main".ref   = "master";
  inputs."moss_nim-main".repo  = "moss_nim";
  inputs."moss_nim-main".type  = "github";
  inputs."moss_nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moss_nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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