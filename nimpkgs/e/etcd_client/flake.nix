{
  description = ''etcd client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."etcd_client-master".url = "path:./master";
  inputs."etcd_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."etcd_client-0_1_0".url = "path:./0_1_0";
  inputs."etcd_client-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."etcd_client-0_2_0".url = "path:./0_2_0";
  inputs."etcd_client-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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