{
  description = ''Nim binding for KissFFT Fast Fourier Transform library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kissfft-master".dir   = "master";
  inputs."kissfft-master".owner = "nim-nix-pkgs";
  inputs."kissfft-master".ref   = "master";
  inputs."kissfft-master".repo  = "kissfft";
  inputs."kissfft-master".type  = "github";
  inputs."kissfft-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kissfft-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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