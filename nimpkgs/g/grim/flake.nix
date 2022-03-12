{
  description = ''Graphs in nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grim-master".url = "path:./master";
  inputs."grim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_1_0".url = "path:./v_0_1_0";
  inputs."grim-v_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_1_1".url = "path:./v_0_1_1";
  inputs."grim-v_0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v_0_2_0".url = "path:./v_0_2_0";
  inputs."grim-v_0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v0_3_0".url = "path:./v0_3_0";
  inputs."grim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grim-v0_3_1".url = "path:./v0_3_1";
  inputs."grim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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