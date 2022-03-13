{
  description = ''Signed Distance Field builder for contour texturing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sdf-master".dir   = "master";
  inputs."sdf-master".owner = "nim-nix-pkgs";
  inputs."sdf-master".ref   = "master";
  inputs."sdf-master".repo  = "sdf";
  inputs."sdf-master".type  = "github";
  inputs."sdf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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