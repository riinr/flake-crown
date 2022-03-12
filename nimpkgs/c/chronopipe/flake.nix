{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chronopipe-master".url = "path:./master";
  inputs."chronopipe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronopipe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronopipe-v0_1_0".url = "path:./v0_1_0";
  inputs."chronopipe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronopipe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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