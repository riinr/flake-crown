{
  description = ''Bindings for the Music Player Daemon C client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libmpdclient-master".dir   = "master";
  inputs."libmpdclient-master".owner = "nim-nix-pkgs";
  inputs."libmpdclient-master".ref   = "master";
  inputs."libmpdclient-master".repo  = "libmpdclient";
  inputs."libmpdclient-master".type  = "github";
  inputs."libmpdclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libmpdclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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