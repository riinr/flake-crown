{
  description = ''Library for exposing metrics to Prometheus'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prometheus-master".dir   = "master";
  inputs."prometheus-master".owner = "nim-nix-pkgs";
  inputs."prometheus-master".ref   = "master";
  inputs."prometheus-master".repo  = "prometheus";
  inputs."prometheus-master".type  = "github";
  inputs."prometheus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prometheus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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