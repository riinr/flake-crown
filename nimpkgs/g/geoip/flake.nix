{
  description = ''Retrieve info about a location from an IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geoip-master".dir   = "master";
  inputs."geoip-master".owner = "nim-nix-pkgs";
  inputs."geoip-master".ref   = "master";
  inputs."geoip-master".repo  = "geoip";
  inputs."geoip-master".type  = "github";
  inputs."geoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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