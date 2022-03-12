{
  description = ''rodster'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rodster-main".url = "path:./main";
  inputs."rodster-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_1_0".url = "path:./0_1_0";
  inputs."rodster-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_2_0".url = "path:./0_2_0";
  inputs."rodster-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_3_0".url = "path:./0_3_0";
  inputs."rodster-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_0_0".url = "path:./1_0_0";
  inputs."rodster-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_1_0".url = "path:./1_1_0";
  inputs."rodster-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_2_0".url = "path:./1_2_0";
  inputs."rodster-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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