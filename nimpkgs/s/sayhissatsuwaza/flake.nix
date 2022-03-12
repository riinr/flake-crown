{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sayhissatsuwaza-master".url = "path:./master";
  inputs."sayhissatsuwaza-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_1_0".url = "path:./v0_1_0";
  inputs."sayhissatsuwaza-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_2_0".url = "path:./v0_2_0";
  inputs."sayhissatsuwaza-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_3_0".url = "path:./v0_3_0";
  inputs."sayhissatsuwaza-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_4_0".url = "path:./v0_4_0";
  inputs."sayhissatsuwaza-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_5_0".url = "path:./v0_5_0";
  inputs."sayhissatsuwaza-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_6_0".url = "path:./v0_6_0";
  inputs."sayhissatsuwaza-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_7_0".url = "path:./v0_7_0";
  inputs."sayhissatsuwaza-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_8_0".url = "path:./v0_8_0";
  inputs."sayhissatsuwaza-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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