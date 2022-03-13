{
  description = ''Library for decompressing tar.gz files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."untar-master".dir   = "master";
  inputs."untar-master".owner = "nim-nix-pkgs";
  inputs."untar-master".ref   = "master";
  inputs."untar-master".repo  = "untar";
  inputs."untar-master".type  = "github";
  inputs."untar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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