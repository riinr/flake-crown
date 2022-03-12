{
  description = ''Simple nimble package to log monotic timings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timelog-main".url = "path:./main";
  inputs."timelog-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_0".url = "path:./v1_0_0";
  inputs."timelog-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_1".url = "path:./v1_0_1";
  inputs."timelog-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_2".url = "path:./v1_0_2";
  inputs."timelog-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_1_0".url = "path:./v1_1_0";
  inputs."timelog-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_2_0".url = "path:./v1_2_0";
  inputs."timelog-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_3_0".url = "path:./v1_3_0";
  inputs."timelog-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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