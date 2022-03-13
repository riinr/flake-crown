{
  description = ''Yahoo! Weather API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."yahooweather-master".dir   = "master";
  inputs."yahooweather-master".owner = "nim-nix-pkgs";
  inputs."yahooweather-master".ref   = "master";
  inputs."yahooweather-master".repo  = "yahooweather";
  inputs."yahooweather-master".type  = "github";
  inputs."yahooweather-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yahooweather-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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