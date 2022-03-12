{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matsuri-master".url = "path:./master";
  inputs."matsuri-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_1_0".url = "path:./v0_1_0";
  inputs."matsuri-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_2_0".url = "path:./v0_2_0";
  inputs."matsuri-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matsuri-v0_3_0".url = "path:./v0_3_0";
  inputs."matsuri-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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