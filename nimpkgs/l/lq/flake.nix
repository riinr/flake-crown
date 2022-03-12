{
  description = ''Directory listing tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lq-master".url = "path:./master";
  inputs."lq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-1_0_0".url = "path:./1_0_0";
  inputs."lq-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-1_0_1".url = "path:./1_0_1";
  inputs."lq-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_0_0".url = "path:./2_0_0";
  inputs."lq-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_2_0".url = "path:./2_2_0";
  inputs."lq-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lq-2_2_1".url = "path:./2_2_1";
  inputs."lq-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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