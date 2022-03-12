{
  description = ''User Agent parser for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."useragents-master".url = "path:./master";
  inputs."useragents-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."useragents-0_1_1".url = "path:./0_1_1";
  inputs."useragents-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."useragents-v0_1_1".url = "path:./v0_1_1";
  inputs."useragents-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragents-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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