{
  description = ''A utility library to find the directory you need to app in.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."appdirs-master".url = "path:./master";
  inputs."appdirs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."appdirs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."appdirs-0_1_0".url = "path:./0_1_0";
  inputs."appdirs-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."appdirs-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."appdirs-0_1_1".url = "path:./0_1_1";
  inputs."appdirs-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."appdirs-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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