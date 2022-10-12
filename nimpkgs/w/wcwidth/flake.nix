{
  description = ''Implementation of wcwidth with Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wcwidth-main".dir   = "main";
  inputs."wcwidth-main".owner = "nim-nix-pkgs";
  inputs."wcwidth-main".ref   = "master";
  inputs."wcwidth-main".repo  = "wcwidth";
  inputs."wcwidth-main".type  = "github";
  inputs."wcwidth-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wcwidth-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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