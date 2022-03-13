{
  description = ''Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blscurve-master".dir   = "master";
  inputs."blscurve-master".owner = "nim-nix-pkgs";
  inputs."blscurve-master".ref   = "master";
  inputs."blscurve-master".repo  = "blscurve";
  inputs."blscurve-master".type  = "github";
  inputs."blscurve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blscurve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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