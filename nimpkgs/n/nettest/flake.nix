{
  description = ''Connection Test for Nim Web Applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nettest-main".dir   = "main";
  inputs."nettest-main".owner = "nim-nix-pkgs";
  inputs."nettest-main".ref   = "master";
  inputs."nettest-main".repo  = "nettest";
  inputs."nettest-main".type  = "github";
  inputs."nettest-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nettest-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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