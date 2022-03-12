{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scram-master".url = "path:./master";
  inputs."scram-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_0".url = "path:./0_1_0";
  inputs."scram-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_1".url = "path:./0_1_1";
  inputs."scram-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_10".url = "path:./0_1_10";
  inputs."scram-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_11".url = "path:./0_1_11";
  inputs."scram-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_12".url = "path:./0_1_12";
  inputs."scram-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_13".url = "path:./0_1_13";
  inputs."scram-0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_2".url = "path:./0_1_2";
  inputs."scram-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_3".url = "path:./0_1_3";
  inputs."scram-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_4".url = "path:./0_1_4";
  inputs."scram-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_5".url = "path:./0_1_5";
  inputs."scram-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_6".url = "path:./0_1_6";
  inputs."scram-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_7".url = "path:./0_1_7";
  inputs."scram-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_8".url = "path:./0_1_8";
  inputs."scram-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram-0_1_9".url = "path:./0_1_9";
  inputs."scram-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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