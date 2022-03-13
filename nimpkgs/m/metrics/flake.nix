{
  description = ''Nim metrics client library supporting the Prometheus monitoring toolkit'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."metrics-master".dir   = "master";
  inputs."metrics-master".owner = "nim-nix-pkgs";
  inputs."metrics-master".ref   = "master";
  inputs."metrics-master".repo  = "metrics";
  inputs."metrics-master".type  = "github";
  inputs."metrics-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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