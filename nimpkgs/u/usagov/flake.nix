{
  description = ''USA Code.Gov MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."usagov-master".dir   = "master";
  inputs."usagov-master".owner = "nim-nix-pkgs";
  inputs."usagov-master".ref   = "master";
  inputs."usagov-master".repo  = "usagov";
  inputs."usagov-master".type  = "github";
  inputs."usagov-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usagov-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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