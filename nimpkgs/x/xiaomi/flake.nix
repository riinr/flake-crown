{
  description = ''Read and write to Xiaomi IOT devices.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xiaomi-master".url = "path:./master";
  inputs."xiaomi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_1".url = "path:./v0_1_1";
  inputs."xiaomi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_2".url = "path:./v0_1_2";
  inputs."xiaomi-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_3".url = "path:./v0_1_3";
  inputs."xiaomi-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_4".url = "path:./v0_1_4";
  inputs."xiaomi-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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