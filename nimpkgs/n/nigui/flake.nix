{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nigui-master".url = "path:./master";
  inputs."nigui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_0".url = "path:./v0_2_0";
  inputs."nigui-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_1".url = "path:./v0_2_1";
  inputs."nigui-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_2".url = "path:./v0_2_2";
  inputs."nigui-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_3".url = "path:./v0_2_3";
  inputs."nigui-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_4".url = "path:./v0_2_4";
  inputs."nigui-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui-v0_2_5".url = "path:./v0_2_5";
  inputs."nigui-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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