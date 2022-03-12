{
  description = ''Zero-wrapping C imports in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."futhark-master".url = "path:./master";
  inputs."futhark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_3_0".url = "path:./v0_3_0";
  inputs."futhark-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_3_1".url = "path:./v0_3_1";
  inputs."futhark-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_4_0".url = "path:./v0_4_0";
  inputs."futhark-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_5_0".url = "path:./v0_5_0";
  inputs."futhark-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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