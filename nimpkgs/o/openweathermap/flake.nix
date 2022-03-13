{
  description = ''OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openweathermap-master".dir   = "master";
  inputs."openweathermap-master".owner = "nim-nix-pkgs";
  inputs."openweathermap-master".ref   = "master";
  inputs."openweathermap-master".repo  = "openweathermap";
  inputs."openweathermap-master".type  = "github";
  inputs."openweathermap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openweathermap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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