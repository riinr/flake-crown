{
  description = ''A container runtime written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nicoru-develop".dir   = "develop";
  inputs."nicoru-develop".owner = "nim-nix-pkgs";
  inputs."nicoru-develop".ref   = "master";
  inputs."nicoru-develop".repo  = "nicoru";
  inputs."nicoru-develop".type  = "github";
  inputs."nicoru-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicoru-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicoru-main".dir   = "main";
  inputs."nicoru-main".owner = "nim-nix-pkgs";
  inputs."nicoru-main".ref   = "master";
  inputs."nicoru-main".repo  = "nicoru";
  inputs."nicoru-main".type  = "github";
  inputs."nicoru-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicoru-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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