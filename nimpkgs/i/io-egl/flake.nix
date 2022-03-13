{
  description = ''Obsolete - please use egl instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-egl-master".dir   = "master";
  inputs."io-egl-master".owner = "nim-nix-pkgs";
  inputs."io-egl-master".ref   = "master";
  inputs."io-egl-master".repo  = "io-egl";
  inputs."io-egl-master".type  = "github";
  inputs."io-egl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-egl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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