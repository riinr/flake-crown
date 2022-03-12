{
  description = ''Test runner with file monitoring and desktop notification capabilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."testrunner-master".url = "path:./master";
  inputs."testrunner-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testrunner-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testrunner-0_1_0".url = "path:./0_1_0";
  inputs."testrunner-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testrunner-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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