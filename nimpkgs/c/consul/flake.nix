{
  description = ''A simple interface to a running Consul agent.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."consul-master".dir   = "master";
  inputs."consul-master".owner = "nim-nix-pkgs";
  inputs."consul-master".ref   = "master";
  inputs."consul-master".repo  = "consul";
  inputs."consul-master".type  = "github";
  inputs."consul-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."consul-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."consul-0_0_1".dir   = "0_0_1";
  inputs."consul-0_0_1".owner = "nim-nix-pkgs";
  inputs."consul-0_0_1".ref   = "master";
  inputs."consul-0_0_1".repo  = "consul";
  inputs."consul-0_0_1".type  = "github";
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