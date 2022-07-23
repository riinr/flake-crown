{
  description = ''A 2D Array Implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."array2d-master".dir   = "master";
  inputs."array2d-master".owner = "nim-nix-pkgs";
  inputs."array2d-master".ref   = "master";
  inputs."array2d-master".repo  = "array2d";
  inputs."array2d-master".type  = "github";
  inputs."array2d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."array2d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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