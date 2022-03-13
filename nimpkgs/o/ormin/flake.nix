{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ormin-master".dir   = "master";
  inputs."ormin-master".owner = "nim-nix-pkgs";
  inputs."ormin-master".ref   = "master";
  inputs."ormin-master".repo  = "ormin";
  inputs."ormin-master".type  = "github";
  inputs."ormin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ormin-0_1_0".dir   = "0_1_0";
  inputs."ormin-0_1_0".owner = "nim-nix-pkgs";
  inputs."ormin-0_1_0".ref   = "master";
  inputs."ormin-0_1_0".repo  = "ormin";
  inputs."ormin-0_1_0".type  = "github";
  inputs."ormin-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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