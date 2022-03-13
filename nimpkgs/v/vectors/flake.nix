{
  description = ''Simple multidimensional vector math'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vectors-master".dir   = "master";
  inputs."vectors-master".owner = "nim-nix-pkgs";
  inputs."vectors-master".ref   = "master";
  inputs."vectors-master".repo  = "vectors";
  inputs."vectors-master".type  = "github";
  inputs."vectors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vectors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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