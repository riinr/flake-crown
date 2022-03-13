{
  description = ''Actors library for Nim inspired by akka-actors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimactors-master".dir   = "master";
  inputs."nimactors-master".owner = "nim-nix-pkgs";
  inputs."nimactors-master".ref   = "master";
  inputs."nimactors-master".repo  = "nimactors";
  inputs."nimactors-master".type  = "github";
  inputs."nimactors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimactors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimactors-v0_1_0".dir   = "v0_1_0";
  inputs."nimactors-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimactors-v0_1_0".ref   = "master";
  inputs."nimactors-v0_1_0".repo  = "nimactors";
  inputs."nimactors-v0_1_0".type  = "github";
  inputs."nimactors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimactors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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