{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gmp-master".url = "path:./master";
  inputs."gmp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-0_1_1".url = "path:./0_1_1";
  inputs."gmp-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_1".url = "path:./v0_2_1";
  inputs."gmp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_2".url = "path:./v0_2_2";
  inputs."gmp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_3".url = "path:./v0_2_3";
  inputs."gmp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_4".url = "path:./v0_2_4";
  inputs."gmp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_5".url = "path:./v0_2_5";
  inputs."gmp-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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