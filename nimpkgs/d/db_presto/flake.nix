{
  description = ''prestodb simple connector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_presto-master".url = "path:./master";
  inputs."db_presto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_5_0".url = "path:./0_5_0";
  inputs."db_presto-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_7_0".url = "path:./0_7_0";
  inputs."db_presto-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_8_0".url = "path:./0_8_0";
  inputs."db_presto-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_1".url = "path:./0_9_1";
  inputs."db_presto-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_5".url = "path:./0_9_5";
  inputs."db_presto-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_8".url = "path:./0_9_8";
  inputs."db_presto-0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_9".url = "path:./0_9_9";
  inputs."db_presto-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-0_9_91".url = "path:./0_9_91";
  inputs."db_presto-0_9_91".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_91".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_0_1".url = "path:./1_0_1";
  inputs."db_presto-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_0_11".url = "path:./1_0_11";
  inputs."db_presto-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_presto-1_1_0".url = "path:./1_1_0";
  inputs."db_presto-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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