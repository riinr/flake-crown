{
  description = ''pure Nim CSS Grid layout engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cssgrid-main".dir   = "main";
  inputs."cssgrid-main".owner = "nim-nix-pkgs";
  inputs."cssgrid-main".ref   = "master";
  inputs."cssgrid-main".repo  = "cssgrid";
  inputs."cssgrid-main".type  = "github";
  inputs."cssgrid-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cssgrid-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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