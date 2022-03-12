{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfcore-master".url = "path:./master";
  inputs."zfcore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_0_29".url = "path:./1_0_29";
  inputs."zfcore-1_0_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_0_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_0_30".url = "path:./1_0_30";
  inputs."zfcore-1_0_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_0_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_1_1".url = "path:./1_1_1";
  inputs."zfcore-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_1_2".url = "path:./1_1_2";
  inputs."zfcore-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-V1_0_11".url = "path:./V1_0_11";
  inputs."zfcore-V1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-V1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_1".url = "path:./v1_0_1";
  inputs."zfcore-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_15".url = "path:./v1_0_15";
  inputs."zfcore-v1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_16".url = "path:./v1_0_16";
  inputs."zfcore-v1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_18".url = "path:./v1_0_18";
  inputs."zfcore-v1_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_2".url = "path:./v1_0_2";
  inputs."zfcore-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_3".url = "path:./v1_0_3";
  inputs."zfcore-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_4".url = "path:./v1_0_4";
  inputs."zfcore-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_6".url = "path:./v1_0_6";
  inputs."zfcore-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_6-stable".url = "path:./v1_0_6-stable";
  inputs."zfcore-v1_0_6-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_6-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_7".url = "path:./v1_0_7";
  inputs."zfcore-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_8".url = "path:./v1_0_8";
  inputs."zfcore-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_8-1".url = "path:./v1_0_8-1";
  inputs."zfcore-v1_0_8-1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_8-1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_5".url = "path:./v1_1_5";
  inputs."zfcore-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_6".url = "path:./v1_1_6";
  inputs."zfcore-v1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_7".url = "path:./v1_1_7";
  inputs."zfcore-v1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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