{
  description = ''The Nim framework for VK API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shizuka-master".url = "path:./master";
  inputs."shizuka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-nightly-0_3_0".url = "path:./nightly-0_3_0";
  inputs."shizuka-nightly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-nightly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-stable-1_0_0".url = "path:./stable-1_0_0";
  inputs."shizuka-stable-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-stable-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-v0_2_1".url = "path:./v0_2_1";
  inputs."shizuka-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shizuka-v0_2_2".url = "path:./v0_2_2";
  inputs."shizuka-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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