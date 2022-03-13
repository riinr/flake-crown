{
  description = ''A nimterop wrapper for the dav1d portable-and-fast AV1 video decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dav1d-master".dir   = "master";
  inputs."dav1d-master".owner = "nim-nix-pkgs";
  inputs."dav1d-master".ref   = "master";
  inputs."dav1d-master".repo  = "dav1d";
  inputs."dav1d-master".type  = "github";
  inputs."dav1d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dav1d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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