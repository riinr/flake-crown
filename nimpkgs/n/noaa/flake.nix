{
  description = ''NOAA weather API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."noaa-master".dir   = "master";
  inputs."noaa-master".owner = "nim-nix-pkgs";
  inputs."noaa-master".ref   = "master";
  inputs."noaa-master".repo  = "noaa";
  inputs."noaa-master".type  = "github";
  inputs."noaa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noaa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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