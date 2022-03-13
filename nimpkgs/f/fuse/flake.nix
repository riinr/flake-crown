{
  description = ''A FUSE binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fuse-master".dir   = "master";
  inputs."fuse-master".owner = "nim-nix-pkgs";
  inputs."fuse-master".ref   = "master";
  inputs."fuse-master".repo  = "fuse";
  inputs."fuse-master".type  = "github";
  inputs."fuse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fuse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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