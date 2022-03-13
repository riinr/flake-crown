{
  description = ''Retrieve info about a location from an IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."freegeoip-master".dir   = "master";
  inputs."freegeoip-master".owner = "nim-nix-pkgs";
  inputs."freegeoip-master".ref   = "master";
  inputs."freegeoip-master".repo  = "freegeoip";
  inputs."freegeoip-master".type  = "github";
  inputs."freegeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freegeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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