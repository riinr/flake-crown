{
  description = ''Web Technologies based Crossplatform GUI Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."crowngui-master".url = "path:./master";
  inputs."crowngui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_3".url = "path:./v0_2_3";
  inputs."crowngui-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_4".url = "path:./v0_2_4";
  inputs."crowngui-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_7".url = "path:./v0_2_7";
  inputs."crowngui-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_8".url = "path:./v0_2_8";
  inputs."crowngui-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crowngui-v0_2_9".url = "path:./v0_2_9";
  inputs."crowngui-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowngui-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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