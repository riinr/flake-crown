{
  description = ''markx selects execution targets with editor and executes commands.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."markx-master".url = "path:./master";
  inputs."markx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markx-v1_0_0".url = "path:./v1_0_0";
  inputs."markx-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markx-v1_0_1".url = "path:./v1_0_1";
  inputs."markx-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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