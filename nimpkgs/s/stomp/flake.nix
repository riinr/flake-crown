{
  description = ''A pure-nim implementation of the STOMP protocol for machine messaging.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stomp-master".dir   = "master";
  inputs."stomp-master".owner = "nim-nix-pkgs";
  inputs."stomp-master".ref   = "master";
  inputs."stomp-master".repo  = "stomp";
  inputs."stomp-master".type  = "github";
  inputs."stomp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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