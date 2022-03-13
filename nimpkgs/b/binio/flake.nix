{
  description = ''Package for packing and unpacking byte data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binio-master".dir   = "master";
  inputs."binio-master".owner = "nim-nix-pkgs";
  inputs."binio-master".ref   = "master";
  inputs."binio-master".repo  = "binio";
  inputs."binio-master".type  = "github";
  inputs."binio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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