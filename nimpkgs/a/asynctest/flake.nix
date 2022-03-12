{
  description = ''Test asynchronous code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asynctest-main".url = "path:./main";
  inputs."asynctest-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_1_0".url = "path:./0_1_0";
  inputs."asynctest-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_2_0".url = "path:./0_2_0";
  inputs."asynctest-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_2_1".url = "path:./0_2_1";
  inputs."asynctest-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_3_0".url = "path:./0_3_0";
  inputs."asynctest-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_3_1".url = "path:./0_3_1";
  inputs."asynctest-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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