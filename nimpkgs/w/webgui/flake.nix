{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webgui-master".url = "path:./master";
  inputs."webgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_2_0".url = "path:./0_2_0";
  inputs."webgui-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_4_0".url = "path:./0_4_0";
  inputs."webgui-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_5_0".url = "path:./0_5_0";
  inputs."webgui-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_6_0".url = "path:./0_6_0";
  inputs."webgui-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_8_0".url = "path:./0_8_0";
  inputs."webgui-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgui-0_9_0".url = "path:./0_9_0";
  inputs."webgui-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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