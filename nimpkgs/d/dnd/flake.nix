{
  description = ''Drag and drop source / target'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dnd-master".url = "path:./master";
  inputs."dnd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnd-v0_5_0".url = "path:./v0_5_0";
  inputs."dnd-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnd-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnd-v0_6_0".url = "path:./v0_6_0";
  inputs."dnd-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnd-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnd-v0_6_1".url = "path:./v0_6_1";
  inputs."dnd-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnd-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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