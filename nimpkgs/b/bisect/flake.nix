{
  description = ''Bisection algorithms ported from Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bisect-master".url = "path:./master";
  inputs."bisect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bisect-v0_1_1".url = "path:./v0_1_1";
  inputs."bisect-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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