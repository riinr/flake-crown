{
  description = ''Bindings for Chipmunk2D 6.x physics library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chipmunk-master".dir   = "master";
  inputs."chipmunk-master".owner = "nim-nix-pkgs";
  inputs."chipmunk-master".ref   = "master";
  inputs."chipmunk-master".repo  = "chipmunk";
  inputs."chipmunk-master".type  = "github";
  inputs."chipmunk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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