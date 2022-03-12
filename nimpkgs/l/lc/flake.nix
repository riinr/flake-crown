{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lc-master".url = "path:./master";
  inputs."lc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_2".url = "path:./v0_2";
  inputs."lc-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_3".url = "path:./v0_3";
  inputs."lc-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_4".url = "path:./v0_4";
  inputs."lc-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_5".url = "path:./v0_5";
  inputs."lc-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_6".url = "path:./v0_6";
  inputs."lc-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_7".url = "path:./v0_7";
  inputs."lc-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_8".url = "path:./v0_8";
  inputs."lc-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_8_1".url = "path:./v0_8_1";
  inputs."lc-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_9_0".url = "path:./v0_9_0";
  inputs."lc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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