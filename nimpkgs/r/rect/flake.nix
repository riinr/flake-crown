{
  description = ''rect is a command to crop/paste rectangle text.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rect-master".url = "path:./master";
  inputs."rect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect-v1_0_0".url = "path:./v1_0_0";
  inputs."rect-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect-v1_0_1".url = "path:./v1_0_1";
  inputs."rect-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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