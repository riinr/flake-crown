{
  description = ''Writing a 2D Platform Game in Nim with SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."platformer-master".dir   = "master";
  inputs."platformer-master".owner = "nim-nix-pkgs";
  inputs."platformer-master".ref   = "master";
  inputs."platformer-master".repo  = "platformer";
  inputs."platformer-master".type  = "github";
  inputs."platformer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."platformer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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