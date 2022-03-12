{
  description = ''A postgres DB adapter for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pdba-master".url = "path:./master";
  inputs."pdba-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_0".url = "path:./v0_2_0";
  inputs."pdba-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_1".url = "path:./v0_2_1";
  inputs."pdba-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_2".url = "path:./v0_2_2";
  inputs."pdba-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_3".url = "path:./v0_2_3";
  inputs."pdba-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_4".url = "path:./v0_2_4";
  inputs."pdba-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}