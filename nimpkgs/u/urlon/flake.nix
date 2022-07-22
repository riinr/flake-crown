{
  description = ''URL Object Notation implemented in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."urlon-v0_1".dir   = "v0_1";
  inputs."urlon-v0_1".owner = "nim-nix-pkgs";
  inputs."urlon-v0_1".ref   = "master";
  inputs."urlon-v0_1".repo  = "urlon";
  inputs."urlon-v0_1".type  = "github";
  inputs."urlon-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlon-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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