{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."static_server-master".url = "path:./master";
  inputs."static_server-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_0".url = "path:./v1_0_0";
  inputs."static_server-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_1".url = "path:./v1_0_1";
  inputs."static_server-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_2".url = "path:./v1_0_2";
  inputs."static_server-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_3".url = "path:./v1_0_3";
  inputs."static_server-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_4".url = "path:./v1_0_4";
  inputs."static_server-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_5".url = "path:./v1_0_5";
  inputs."static_server-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_6".url = "path:./v1_0_6";
  inputs."static_server-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_7".url = "path:./v1_0_7";
  inputs."static_server-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v1_0_8".url = "path:./v1_0_8";
  inputs."static_server-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v2_0_0".url = "path:./v2_0_0";
  inputs."static_server-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v2_0_1".url = "path:./v2_0_1";
  inputs."static_server-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v2_0_2".url = "path:./v2_0_2";
  inputs."static_server-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v2_0_3".url = "path:./v2_0_3";
  inputs."static_server-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."static_server-v2_2_0".url = "path:./v2_2_0";
  inputs."static_server-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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