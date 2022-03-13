{
  description = ''Composition pattern with event handling library in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."composition-main".dir   = "main";
  inputs."composition-main".owner = "nim-nix-pkgs";
  inputs."composition-main".ref   = "master";
  inputs."composition-main".repo  = "composition";
  inputs."composition-main".type  = "github";
  inputs."composition-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."composition-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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