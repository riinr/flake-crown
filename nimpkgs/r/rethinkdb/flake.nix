{
  description = ''RethinkDB driver for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rethinkdb-master".url = "path:./master";
  inputs."rethinkdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_0".url = "path:./0_1_0";
  inputs."rethinkdb-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_1".url = "path:./0_1_1";
  inputs."rethinkdb-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_2".url = "path:./0_1_2";
  inputs."rethinkdb-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_3".url = "path:./0_1_3";
  inputs."rethinkdb-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_4".url = "path:./0_1_4";
  inputs."rethinkdb-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_5".url = "path:./0_1_5";
  inputs."rethinkdb-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_6".url = "path:./0_1_6";
  inputs."rethinkdb-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_0".url = "path:./0_2_0";
  inputs."rethinkdb-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3".url = "path:./0_2_3";
  inputs."rethinkdb-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_1".url = "path:./0_2_3_1";
  inputs."rethinkdb-0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_2".url = "path:./0_2_3_2";
  inputs."rethinkdb-0_2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_3".url = "path:./0_2_3_3";
  inputs."rethinkdb-0_2_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_4".url = "path:./0_2_3_4";
  inputs."rethinkdb-0_2_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_5".url = "path:./0_2_3_5";
  inputs."rethinkdb-0_2_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_4".url = "path:./0_2_4";
  inputs."rethinkdb-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_5".url = "path:./0_2_5";
  inputs."rethinkdb-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_6".url = "path:./0_2_6";
  inputs."rethinkdb-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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