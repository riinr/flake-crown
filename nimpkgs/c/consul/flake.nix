{
  description = ''A simple interface to a running Consul agent.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."consul-master".url = "path:./master";
  inputs."consul-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."consul-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."consul-0_0_1".url = "path:./0_0_1";
  inputs."consul-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."consul-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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