{
  description = ''Nim port of a simple 2D physics engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."impulse_engine-master".dir   = "master";
  inputs."impulse_engine-master".owner = "nim-nix-pkgs";
  inputs."impulse_engine-master".ref   = "master";
  inputs."impulse_engine-master".repo  = "impulse_engine";
  inputs."impulse_engine-master".type  = "github";
  inputs."impulse_engine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."impulse_engine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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