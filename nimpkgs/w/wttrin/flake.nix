{
  description = ''A library with functions to fetch weather data from wttr.in'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wttrin-master".dir   = "master";
  inputs."wttrin-master".owner = "nim-nix-pkgs";
  inputs."wttrin-master".ref   = "master";
  inputs."wttrin-master".repo  = "wttrin";
  inputs."wttrin-master".type  = "github";
  inputs."wttrin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wttrin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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