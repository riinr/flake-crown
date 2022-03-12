{
  description = ''Pretty-printer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hpprint-master".url = "path:./master";
  inputs."hpprint-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_10".url = "path:./v0_2_10";
  inputs."hpprint-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_12".url = "path:./v0_2_12";
  inputs."hpprint-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_13".url = "path:./v0_2_13";
  inputs."hpprint-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_14".url = "path:./v0_2_14";
  inputs."hpprint-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_15".url = "path:./v0_2_15";
  inputs."hpprint-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_16".url = "path:./v0_2_16";
  inputs."hpprint-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_17".url = "path:./v0_2_17";
  inputs."hpprint-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_18".url = "path:./v0_2_18";
  inputs."hpprint-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_4".url = "path:./v0_2_4";
  inputs."hpprint-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_5".url = "path:./v0_2_5";
  inputs."hpprint-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_6".url = "path:./v0_2_6";
  inputs."hpprint-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_7".url = "path:./v0_2_7";
  inputs."hpprint-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_8".url = "path:./v0_2_8";
  inputs."hpprint-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_9".url = "path:./v0_2_9";
  inputs."hpprint-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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