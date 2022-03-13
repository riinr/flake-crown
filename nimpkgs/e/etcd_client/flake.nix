{
  description = ''etcd client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."etcd_client-master".dir   = "master";
  inputs."etcd_client-master".owner = "nim-nix-pkgs";
  inputs."etcd_client-master".ref   = "master";
  inputs."etcd_client-master".repo  = "etcd_client";
  inputs."etcd_client-master".type  = "github";
  inputs."etcd_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."etcd_client-0_1_0".dir   = "0_1_0";
  inputs."etcd_client-0_1_0".owner = "nim-nix-pkgs";
  inputs."etcd_client-0_1_0".ref   = "master";
  inputs."etcd_client-0_1_0".repo  = "etcd_client";
  inputs."etcd_client-0_1_0".type  = "github";
  inputs."etcd_client-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."etcd_client-0_2_0".dir   = "0_2_0";
  inputs."etcd_client-0_2_0".owner = "nim-nix-pkgs";
  inputs."etcd_client-0_2_0".ref   = "master";
  inputs."etcd_client-0_2_0".repo  = "etcd_client";
  inputs."etcd_client-0_2_0".type  = "github";
  inputs."etcd_client-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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