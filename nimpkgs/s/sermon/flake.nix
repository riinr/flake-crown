{
  description = ''Monitor the state and memory of processes and URL response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sermon-master".url = "path:./master";
  inputs."sermon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_1_1".url = "path:./v0_1_1";
  inputs."sermon-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_6".url = "path:./v0_2_6";
  inputs."sermon-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_7".url = "path:./v0_2_7";
  inputs."sermon-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_8".url = "path:./v0_2_8";
  inputs."sermon-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_3_0".url = "path:./v0_3_0";
  inputs."sermon-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_3_1".url = "path:./v0_3_1";
  inputs."sermon-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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