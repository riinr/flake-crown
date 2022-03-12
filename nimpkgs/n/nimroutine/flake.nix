{
  description = ''A go routine like nim implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimroutine-develop".url = "path:./develop";
  inputs."nimroutine-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-master".url = "path:./master";
  inputs."nimroutine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_0".url = "path:./v0_1_0";
  inputs."nimroutine-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_1".url = "path:./v0_1_1";
  inputs."nimroutine-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_2".url = "path:./v0_1_2";
  inputs."nimroutine-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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