{
  description = ''A collection of easing curves for animation purposes.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."skeasing-master".dir   = "master";
  inputs."skeasing-master".owner = "nim-nix-pkgs";
  inputs."skeasing-master".ref   = "master";
  inputs."skeasing-master".repo  = "skeasing";
  inputs."skeasing-master".type  = "github";
  inputs."skeasing-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skeasing-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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