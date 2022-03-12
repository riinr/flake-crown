{
  description = ''A simple, stateless StatsD client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."statsd_client-master".url = "path:./master";
  inputs."statsd_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statsd_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."statsd_client-0_1_1".url = "path:./0_1_1";
  inputs."statsd_client-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statsd_client-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}