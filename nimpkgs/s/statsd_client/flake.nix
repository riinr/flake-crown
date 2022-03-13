{
  description = ''A simple, stateless StatsD client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."statsd_client-master".dir   = "master";
  inputs."statsd_client-master".owner = "nim-nix-pkgs";
  inputs."statsd_client-master".ref   = "master";
  inputs."statsd_client-master".repo  = "statsd_client";
  inputs."statsd_client-master".type  = "github";
  inputs."statsd_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statsd_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."statsd_client-0_1_1".dir   = "0_1_1";
  inputs."statsd_client-0_1_1".owner = "nim-nix-pkgs";
  inputs."statsd_client-0_1_1".ref   = "master";
  inputs."statsd_client-0_1_1".repo  = "statsd_client";
  inputs."statsd_client-0_1_1".type  = "github";
  inputs."statsd_client-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statsd_client-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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