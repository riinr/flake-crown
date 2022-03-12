{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnu-main".url = "path:./main";
  inputs."gnu-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_0_1".url = "path:./v0_0_1";
  inputs."gnu-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_1_1".url = "path:./v0_1_1";
  inputs."gnu-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_1_2".url = "path:./v0_1_2";
  inputs."gnu-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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