{
  description = ''Wrappers for X86 SIMD intrinsics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simdx86-master".dir   = "master";
  inputs."simdx86-master".owner = "nim-nix-pkgs";
  inputs."simdx86-master".ref   = "master";
  inputs."simdx86-master".repo  = "simdx86";
  inputs."simdx86-master".type  = "github";
  inputs."simdx86-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simdx86-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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