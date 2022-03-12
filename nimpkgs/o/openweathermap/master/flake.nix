{
  description = ''OpenWeatherMap API Lib for Nim, Free world wide Creative Commons & Open Data Licensed Weather data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openweathermap-master.flake = false;
  inputs.src-openweathermap-master.owner = "juancarlospaco";
  inputs.src-openweathermap-master.ref   = "refs/heads/master";
  inputs.src-openweathermap-master.repo  = "nim-openweathermap";
  inputs.src-openweathermap-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openweathermap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openweathermap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}