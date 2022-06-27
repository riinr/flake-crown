{
  description = ''A basic little argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blarg-main".dir   = "main";
  inputs."blarg-main".owner = "nim-nix-pkgs";
  inputs."blarg-main".ref   = "master";
  inputs."blarg-main".repo  = "blarg";
  inputs."blarg-main".type  = "github";
  inputs."blarg-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blarg-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blarg-0_1_0".dir   = "0_1_0";
  inputs."blarg-0_1_0".owner = "nim-nix-pkgs";
  inputs."blarg-0_1_0".ref   = "master";
  inputs."blarg-0_1_0".repo  = "blarg";
  inputs."blarg-0_1_0".type  = "github";
  inputs."blarg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blarg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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