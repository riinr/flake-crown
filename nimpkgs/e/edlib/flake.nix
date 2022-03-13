{
  description = ''Nim wrapper for edlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."edlib-main".dir   = "main";
  inputs."edlib-main".owner = "nim-nix-pkgs";
  inputs."edlib-main".ref   = "master";
  inputs."edlib-main".repo  = "edlib";
  inputs."edlib-main".type  = "github";
  inputs."edlib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edlib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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