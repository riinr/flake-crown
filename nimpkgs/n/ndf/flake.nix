{
  description = ''Duplicate files finder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndf-master".url = "path:./master";
  inputs."ndf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndf-0_3_0".url = "path:./0_3_0";
  inputs."ndf-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndf-0_4_0".url = "path:./0_4_0";
  inputs."ndf-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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