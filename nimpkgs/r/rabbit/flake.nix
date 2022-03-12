{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rabbit-main".url = "path:./main";
  inputs."rabbit-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rabbit-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rabbit-v0_1_0".url = "path:./v0_1_0";
  inputs."rabbit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rabbit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}