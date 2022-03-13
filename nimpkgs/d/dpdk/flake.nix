{
  description = ''Library for fast packet processing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dpdk-master".dir   = "master";
  inputs."dpdk-master".owner = "nim-nix-pkgs";
  inputs."dpdk-master".ref   = "master";
  inputs."dpdk-master".repo  = "dpdk";
  inputs."dpdk-master".type  = "github";
  inputs."dpdk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dpdk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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