{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unalix-master".url = "path:./master";
  inputs."unalix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_1".url = "path:./v0_1";
  inputs."unalix-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_2".url = "path:./v0_2";
  inputs."unalix-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_3".url = "path:./v0_3";
  inputs."unalix-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_4".url = "path:./v0_4";
  inputs."unalix-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_5".url = "path:./v0_5";
  inputs."unalix-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_5_1".url = "path:./v0_5_1";
  inputs."unalix-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_6".url = "path:./v0_6";
  inputs."unalix-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_6_1".url = "path:./v0_6_1";
  inputs."unalix-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_7".url = "path:./v0_7";
  inputs."unalix-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_8".url = "path:./v0_8";
  inputs."unalix-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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