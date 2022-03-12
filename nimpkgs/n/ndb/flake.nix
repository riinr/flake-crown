{
  description = ''A db_sqlite fork with a proper typing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndb-master".url = "path:./master";
  inputs."ndb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_0".url = "path:./v0_19_0";
  inputs."ndb-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_1".url = "path:./v0_19_1";
  inputs."ndb-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_2".url = "path:./v0_19_2";
  inputs."ndb-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_3".url = "path:./v0_19_3";
  inputs."ndb-v0_19_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_4".url = "path:./v0_19_4";
  inputs."ndb-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_5".url = "path:./v0_19_5";
  inputs."ndb-v0_19_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_6".url = "path:./v0_19_6";
  inputs."ndb-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_7".url = "path:./v0_19_7";
  inputs."ndb-v0_19_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_8".url = "path:./v0_19_8";
  inputs."ndb-v0_19_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_9".url = "path:./v0_19_9";
  inputs."ndb-v0_19_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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