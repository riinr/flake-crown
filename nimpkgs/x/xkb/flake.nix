{
  description = ''A light wrapper over xkbcommon'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xkb-main".dir   = "main";
  inputs."xkb-main".owner = "nim-nix-pkgs";
  inputs."xkb-main".ref   = "master";
  inputs."xkb-main".repo  = "xkb";
  inputs."xkb-main".type  = "github";
  inputs."xkb-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xkb-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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