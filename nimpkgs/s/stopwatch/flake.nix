{
  description = ''A simple timing library for benchmarking code and other things.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stopwatch-master".url = "path:./master";
  inputs."stopwatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stopwatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stopwatch-v3_5".url = "path:./v3_5";
  inputs."stopwatch-v3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stopwatch-v3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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