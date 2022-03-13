{
  description = ''A teminal othello (reversi) in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimothello-master".dir   = "master";
  inputs."nimothello-master".owner = "nim-nix-pkgs";
  inputs."nimothello-master".ref   = "master";
  inputs."nimothello-master".repo  = "nimothello";
  inputs."nimothello-master".type  = "github";
  inputs."nimothello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimothello-v1_0_0".dir   = "v1_0_0";
  inputs."nimothello-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimothello-v1_0_0".ref   = "master";
  inputs."nimothello-v1_0_0".repo  = "nimothello";
  inputs."nimothello-v1_0_0".type  = "github";
  inputs."nimothello-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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