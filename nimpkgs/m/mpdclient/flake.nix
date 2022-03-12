{
  description = ''MPD client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpdclient-master".url = "path:./master";
  inputs."mpdclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_0".url = "path:./v0_1_0";
  inputs."mpdclient-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_1".url = "path:./v0_1_1";
  inputs."mpdclient-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_2".url = "path:./v0_1_2";
  inputs."mpdclient-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_3".url = "path:./v0_1_3";
  inputs."mpdclient-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_4".url = "path:./v0_1_4";
  inputs."mpdclient-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_5".url = "path:./v0_1_5";
  inputs."mpdclient-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_6".url = "path:./v0_1_6";
  inputs."mpdclient-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_1_7".url = "path:./v0_1_7";
  inputs."mpdclient-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_2_0".url = "path:./v0_2_0";
  inputs."mpdclient-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_2_1".url = "path:./v0_2_1";
  inputs."mpdclient-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_2_2".url = "path:./v0_2_2";
  inputs."mpdclient-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpdclient-v0_3_0".url = "path:./v0_3_0";
  inputs."mpdclient-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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