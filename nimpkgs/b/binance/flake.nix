{
  description = ''A Nim library to access the Binance API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binance-master".dir   = "master";
  inputs."binance-master".owner = "nim-nix-pkgs";
  inputs."binance-master".ref   = "master";
  inputs."binance-master".repo  = "binance";
  inputs."binance-master".type  = "github";
  inputs."binance-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binance-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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