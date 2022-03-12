{
  description = ''Last.FM API bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lastfm-master".url = "path:./master";
  inputs."lastfm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_6_0".url = "path:./0_6_0";
  inputs."lastfm-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_7_0".url = "path:./0_7_0";
  inputs."lastfm-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_0".url = "path:./0_8_0";
  inputs."lastfm-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_1".url = "path:./0_8_1";
  inputs."lastfm-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_2".url = "path:./0_8_2";
  inputs."lastfm-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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