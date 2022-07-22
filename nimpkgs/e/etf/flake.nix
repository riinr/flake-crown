{
  description = ''ETF (Erlang Term Format) library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."etf-master".dir   = "master";
  inputs."etf-master".owner = "nim-nix-pkgs";
  inputs."etf-master".ref   = "master";
  inputs."etf-master".repo  = "etf";
  inputs."etf-master".type  = "github";
  inputs."etf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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