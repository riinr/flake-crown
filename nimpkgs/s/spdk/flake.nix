{
  description = ''The Storage Performance Development Kit(SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spdk-master".dir   = "master";
  inputs."spdk-master".owner = "nim-nix-pkgs";
  inputs."spdk-master".ref   = "master";
  inputs."spdk-master".repo  = "spdk";
  inputs."spdk-master".type  = "github";
  inputs."spdk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spdk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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