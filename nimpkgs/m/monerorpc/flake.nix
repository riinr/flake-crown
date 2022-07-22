{
  description = ''Library for interacting with Monero wallets via RPC.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."monerorpc-main".dir   = "main";
  inputs."monerorpc-main".owner = "nim-nix-pkgs";
  inputs."monerorpc-main".ref   = "master";
  inputs."monerorpc-main".repo  = "monerorpc";
  inputs."monerorpc-main".type  = "github";
  inputs."monerorpc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monerorpc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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