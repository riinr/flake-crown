{
  description = ''Obsolete - please use egl instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."egl-master".dir   = "master";
  inputs."egl-master".owner = "nim-nix-pkgs";
  inputs."egl-master".ref   = "master";
  inputs."egl-master".repo  = "egl";
  inputs."egl-master".type  = "github";
  inputs."egl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."egl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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