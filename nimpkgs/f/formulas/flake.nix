{
  description = ''Mathematical formulas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."formulas-master".dir   = "master";
  inputs."formulas-master".owner = "nim-nix-pkgs";
  inputs."formulas-master".ref   = "master";
  inputs."formulas-master".repo  = "formulas";
  inputs."formulas-master".type  = "github";
  inputs."formulas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."formulas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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