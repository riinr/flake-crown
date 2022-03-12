{
  description = ''Fully type safe, compile time only units library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unchained-master".url = "path:./master";
  inputs."unchained-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_0".url = "path:./v0_1_0";
  inputs."unchained-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_1".url = "path:./v0_1_1";
  inputs."unchained-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_3".url = "path:./v0_1_3";
  inputs."unchained-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_4".url = "path:./v0_1_4";
  inputs."unchained-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_5".url = "path:./v0_1_5";
  inputs."unchained-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_6".url = "path:./v0_1_6";
  inputs."unchained-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_7".url = "path:./v0_1_7";
  inputs."unchained-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_8".url = "path:./v0_1_8";
  inputs."unchained-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unchained-v0_1_9".url = "path:./v0_1_9";
  inputs."unchained-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unchained-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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