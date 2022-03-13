{
  description = ''A low level GPIO library for the BeagleBone board family'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."boneio-master".dir   = "master";
  inputs."boneio-master".owner = "nim-nix-pkgs";
  inputs."boneio-master".ref   = "master";
  inputs."boneio-master".repo  = "boneio";
  inputs."boneio-master".type  = "github";
  inputs."boneio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boneio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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