{
  description = ''A curses inspired simple cross-platform console library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."illwill-master".url = "path:./master";
  inputs."illwill-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-0_1_0".url = "path:./0_1_0";
  inputs."illwill-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-v0_1_0".url = "path:./v0_1_0";
  inputs."illwill-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-v0_2_0".url = "path:./v0_2_0";
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