{
  description = ''Variant type and type matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."variant-master".url = "path:./master";
  inputs."variant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2".url = "path:./v0_2";
  inputs."variant-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_1".url = "path:./v0_2_1";
  inputs."variant-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_10".url = "path:./v0_2_10";
  inputs."variant-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_11".url = "path:./v0_2_11";
  inputs."variant-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_12".url = "path:./v0_2_12";
  inputs."variant-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_2".url = "path:./v0_2_2";
  inputs."variant-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_3".url = "path:./v0_2_3";
  inputs."variant-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_4".url = "path:./v0_2_4";
  inputs."variant-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_5".url = "path:./v0_2_5";
  inputs."variant-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_6".url = "path:./v0_2_6";
  inputs."variant-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_7".url = "path:./v0_2_7";
  inputs."variant-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_8".url = "path:./v0_2_8";
  inputs."variant-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_9".url = "path:./v0_2_9";
  inputs."variant-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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