{
  description = ''Simple ECS implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tecs-master".url = "path:./master";
  inputs."tecs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tecs-v0_1".url = "path:./v0_1";
  inputs."tecs-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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