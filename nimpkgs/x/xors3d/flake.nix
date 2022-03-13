{
  description = ''Blitz3D-esque DX9 engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xors3d-master".dir   = "master";
  inputs."xors3d-master".owner = "nim-nix-pkgs";
  inputs."xors3d-master".ref   = "master";
  inputs."xors3d-master".repo  = "xors3d";
  inputs."xors3d-master".type  = "github";
  inputs."xors3d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xors3d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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