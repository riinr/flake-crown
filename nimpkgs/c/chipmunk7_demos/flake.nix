{
  description = ''Chipmunk7 demos for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chipmunk7_demos-master".dir   = "master";
  inputs."chipmunk7_demos-master".owner = "nim-nix-pkgs";
  inputs."chipmunk7_demos-master".ref   = "master";
  inputs."chipmunk7_demos-master".repo  = "chipmunk7_demos";
  inputs."chipmunk7_demos-master".type  = "github";
  inputs."chipmunk7_demos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk7_demos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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