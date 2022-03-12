{
  description = ''Bindings for SunVox modular synthesizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sunvox-master".url = "path:./master";
  inputs."sunvox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sunvox-0_0_1".url = "path:./0_0_1";
  inputs."sunvox-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sunvox-0_1_1".url = "path:./0_1_1";
  inputs."sunvox-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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