{
  description = ''A wrapper of libsndfile'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sndfile-master".dir   = "master";
  inputs."sndfile-master".owner = "nim-nix-pkgs";
  inputs."sndfile-master".ref   = "master";
  inputs."sndfile-master".repo  = "sndfile";
  inputs."sndfile-master".type  = "github";
  inputs."sndfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sndfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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