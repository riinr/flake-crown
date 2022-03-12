{
  description = ''This library is a wrapper to C GDBM library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gdbmc-master".url = "path:./master";
  inputs."gdbmc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_0".url = "path:./v0_9_0";
  inputs."gdbmc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_1".url = "path:./v0_9_1";
  inputs."gdbmc-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_9".url = "path:./v0_9_9";
  inputs."gdbmc-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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