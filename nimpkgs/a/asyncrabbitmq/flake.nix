{
  description = ''Pure Nim asyncronous driver for RabbitMQ'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncrabbitmq-master".dir   = "master";
  inputs."asyncrabbitmq-master".owner = "nim-nix-pkgs";
  inputs."asyncrabbitmq-master".ref   = "master";
  inputs."asyncrabbitmq-master".repo  = "asyncrabbitmq";
  inputs."asyncrabbitmq-master".type  = "github";
  inputs."asyncrabbitmq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncrabbitmq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncrabbitmq-v0_1".dir   = "v0_1";
  inputs."asyncrabbitmq-v0_1".owner = "nim-nix-pkgs";
  inputs."asyncrabbitmq-v0_1".ref   = "master";
  inputs."asyncrabbitmq-v0_1".repo  = "asyncrabbitmq";
  inputs."asyncrabbitmq-v0_1".type  = "github";
  inputs."asyncrabbitmq-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncrabbitmq-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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