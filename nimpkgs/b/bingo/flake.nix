{
  description = ''Binary serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bingo-master".url = "path:./master";
  inputs."bingo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_0_1".url = "path:./v0_0_1";
  inputs."bingo-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_1_0".url = "path:./v0_1_0";
  inputs."bingo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_2_0".url = "path:./v0_2_0";
  inputs."bingo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_2_1".url = "path:./v0_2_1";
  inputs."bingo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_3_0".url = "path:./v0_3_0";
  inputs."bingo-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_4_0".url = "path:./v0_4_0";
  inputs."bingo-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_4_1".url = "path:./v0_4_1";
  inputs."bingo-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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