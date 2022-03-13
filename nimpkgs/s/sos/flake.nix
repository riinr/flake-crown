{
  description = ''Nim wrapper for Sandia OpenSHMEM, a high performance computing (HPC), distributed shared symmetric memory library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sos-main".dir   = "main";
  inputs."sos-main".owner = "nim-nix-pkgs";
  inputs."sos-main".ref   = "master";
  inputs."sos-main".repo  = "sos";
  inputs."sos-main".type  = "github";
  inputs."sos-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sos-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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