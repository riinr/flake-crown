{
  description = ''InfluxDB API client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimflux-master".url = "path:./master";
  inputs."nimflux-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_0".url = "path:./v0_1_0";
  inputs."nimflux-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_1".url = "path:./v0_1_1";
  inputs."nimflux-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_2".url = "path:./v0_1_2";
  inputs."nimflux-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_3".url = "path:./v0_1_3";
  inputs."nimflux-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_0".url = "path:./v1_0_0";
  inputs."nimflux-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_1".url = "path:./v1_0_1";
  inputs."nimflux-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_2".url = "path:./v1_0_2";
  inputs."nimflux-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_3".url = "path:./v1_0_3";
  inputs."nimflux-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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