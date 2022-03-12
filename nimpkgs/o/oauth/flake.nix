{
  description = ''OAuth library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oauth-develop".url = "path:./develop";
  inputs."oauth-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-master".url = "path:./master";
  inputs."oauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_10".url = "path:./v0_10";
  inputs."oauth-v0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_2".url = "path:./v0_2";
  inputs."oauth-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_3".url = "path:./v0_3";
  inputs."oauth-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_4".url = "path:./v0_4";
  inputs."oauth-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_4_1".url = "path:./v0_4_1";
  inputs."oauth-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_5".url = "path:./v0_5";
  inputs."oauth-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_6".url = "path:./v0_6";
  inputs."oauth-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_7".url = "path:./v0_7";
  inputs."oauth-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_8".url = "path:./v0_8";
  inputs."oauth-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oauth-v0_9".url = "path:./v0_9";
  inputs."oauth-v0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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