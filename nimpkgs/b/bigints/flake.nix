{
  description = ''Arbitrary-precision integers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bigints-master".url = "path:./master";
  inputs."bigints-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints-0_4_4".url = "path:./0_4_4";
  inputs."bigints-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints-0_5_0".url = "path:./0_5_0";
  inputs."bigints-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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