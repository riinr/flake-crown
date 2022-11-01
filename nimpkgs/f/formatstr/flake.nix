{
  description = ''string interpolation, complement of std/strformat for runtime strings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."formatstr-main".dir   = "main";
  inputs."formatstr-main".owner = "nim-nix-pkgs";
  inputs."formatstr-main".ref   = "master";
  inputs."formatstr-main".repo  = "formatstr";
  inputs."formatstr-main".type  = "github";
  inputs."formatstr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."formatstr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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