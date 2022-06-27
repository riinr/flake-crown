{
  description = ''Syntax sugar which supports auto-dereferencing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."autoderef-main".dir   = "main";
  inputs."autoderef-main".owner = "nim-nix-pkgs";
  inputs."autoderef-main".ref   = "master";
  inputs."autoderef-main".repo  = "autoderef";
  inputs."autoderef-main".type  = "github";
  inputs."autoderef-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autoderef-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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