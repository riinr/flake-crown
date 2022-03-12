{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simple_parseopt-master".url = "path:./master";
  inputs."simple_parseopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_10".url = "path:./v1_0_10";
  inputs."simple_parseopt-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_8".url = "path:./v1_0_8";
  inputs."simple_parseopt-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_0_9".url = "path:./v1_0_9";
  inputs."simple_parseopt-v1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_1_0".url = "path:./v1_1_0";
  inputs."simple_parseopt-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_parseopt-v1_1_1".url = "path:./v1_1_1";
  inputs."simple_parseopt-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_parseopt-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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