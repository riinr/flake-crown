{
  description = ''A performant and scalable HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpbeast-master".url = "path:./master";
  inputs."httpbeast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_1_0".url = "path:./v0_1_0";
  inputs."httpbeast-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_0".url = "path:./v0_2_0";
  inputs."httpbeast-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_1".url = "path:./v0_2_1";
  inputs."httpbeast-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_2".url = "path:./v0_2_2";
  inputs."httpbeast-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_3_0".url = "path:./v0_3_0";
  inputs."httpbeast-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_4_0".url = "path:./v0_4_0";
  inputs."httpbeast-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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