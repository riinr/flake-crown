{
  description = ''UI building with Gnome's Glade'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uibuilder-master".url = "path:./master";
  inputs."uibuilder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_1_0".url = "path:./0_1_0";
  inputs."uibuilder-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_1_1".url = "path:./0_1_1";
  inputs."uibuilder-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_2_0".url = "path:./0_2_0";
  inputs."uibuilder-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uibuilder-0_2_1".url = "path:./0_2_1";
  inputs."uibuilder-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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