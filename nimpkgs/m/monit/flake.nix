{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."monit-master".url = "path:./master";
  inputs."monit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-1_0_0".url = "path:./1_0_0";
  inputs."monit-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-1_1_0".url = "path:./1_1_0";
  inputs."monit-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_0".url = "path:./v1_2_0";
  inputs."monit-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_1".url = "path:./v1_2_1";
  inputs."monit-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_2".url = "path:./v1_2_2";
  inputs."monit-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_3".url = "path:./v1_2_3";
  inputs."monit-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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