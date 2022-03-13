{
  description = ''lib for ppm image'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ppm-master".dir   = "master";
  inputs."ppm-master".owner = "nim-nix-pkgs";
  inputs."ppm-master".ref   = "master";
  inputs."ppm-master".repo  = "ppm";
  inputs."ppm-master".type  = "github";
  inputs."ppm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ppm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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