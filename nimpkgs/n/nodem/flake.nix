{
  description = ''Call remote Nim functions as if it's local'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nodem-main".dir   = "main";
  inputs."nodem-main".owner = "nim-nix-pkgs";
  inputs."nodem-main".ref   = "master";
  inputs."nodem-main".repo  = "nodem";
  inputs."nodem-main".type  = "github";
  inputs."nodem-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodem-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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