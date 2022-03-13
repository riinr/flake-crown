{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."influx-master".dir   = "master";
  inputs."influx-master".owner = "nim-nix-pkgs";
  inputs."influx-master".ref   = "master";
  inputs."influx-master".repo  = "influx";
  inputs."influx-master".type  = "github";
  inputs."influx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."influx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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