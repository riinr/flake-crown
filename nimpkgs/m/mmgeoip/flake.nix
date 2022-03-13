{
  description = ''MaxMind GeoIP library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mmgeoip-master".dir   = "master";
  inputs."mmgeoip-master".owner = "nim-nix-pkgs";
  inputs."mmgeoip-master".ref   = "master";
  inputs."mmgeoip-master".repo  = "mmgeoip";
  inputs."mmgeoip-master".type  = "github";
  inputs."mmgeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mmgeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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