{
  description = ''OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openexchangerates-master".dir   = "master";
  inputs."openexchangerates-master".owner = "nim-nix-pkgs";
  inputs."openexchangerates-master".ref   = "master";
  inputs."openexchangerates-master".repo  = "openexchangerates";
  inputs."openexchangerates-master".type  = "github";
  inputs."openexchangerates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openexchangerates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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