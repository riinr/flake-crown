{
  description = ''Convert strings to any case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anycase-master".url = "path:./master";
  inputs."anycase-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anycase-v0_1_0".url = "path:./v0_1_0";
  inputs."anycase-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anycase-v0_1_1".url = "path:./v0_1_1";
  inputs."anycase-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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