{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimoji-master".url = "path:./master";
  inputs."nimoji-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_0".url = "path:./v0_1_0";
  inputs."nimoji-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_1".url = "path:./v0_1_1";
  inputs."nimoji-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_2".url = "path:./v0_1_2";
  inputs."nimoji-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_3".url = "path:./v0_1_3";
  inputs."nimoji-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimoji-v0_1_4".url = "path:./v0_1_4";
  inputs."nimoji-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimoji-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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