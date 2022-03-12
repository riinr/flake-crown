{
  description = ''UUID library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uuids-master".url = "path:./master";
  inputs."uuids-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_0".url = "path:./v0_1_0";
  inputs."uuids-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_1".url = "path:./v0_1_1";
  inputs."uuids-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_10".url = "path:./v0_1_10";
  inputs."uuids-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_11".url = "path:./v0_1_11";
  inputs."uuids-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_2".url = "path:./v0_1_2";
  inputs."uuids-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_3".url = "path:./v0_1_3";
  inputs."uuids-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_4".url = "path:./v0_1_4";
  inputs."uuids-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_5".url = "path:./v0_1_5";
  inputs."uuids-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_6".url = "path:./v0_1_6";
  inputs."uuids-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_7".url = "path:./v0_1_7";
  inputs."uuids-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_8".url = "path:./v0_1_8";
  inputs."uuids-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_9".url = "path:./v0_1_9";
  inputs."uuids-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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