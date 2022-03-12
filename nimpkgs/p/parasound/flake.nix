{
  description = ''A library for playing audio files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parasound-master".url = "path:./master";
  inputs."parasound-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-0_1_0".url = "path:./0_1_0";
  inputs."parasound-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-0_2_0".url = "path:./0_2_0";
  inputs."parasound-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound-1_0_0".url = "path:./1_0_0";
  inputs."parasound-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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