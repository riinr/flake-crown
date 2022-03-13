{
  description = ''Bisection algorithms ported from Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bisect-master".dir   = "master";
  inputs."bisect-master".owner = "nim-nix-pkgs";
  inputs."bisect-master".ref   = "master";
  inputs."bisect-master".repo  = "bisect";
  inputs."bisect-master".type  = "github";
  inputs."bisect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bisect-v0_1_1".dir   = "v0_1_1";
  inputs."bisect-v0_1_1".owner = "nim-nix-pkgs";
  inputs."bisect-v0_1_1".ref   = "master";
  inputs."bisect-v0_1_1".repo  = "bisect";
  inputs."bisect-v0_1_1".type  = "github";
  inputs."bisect-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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