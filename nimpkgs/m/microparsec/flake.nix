{
  description = ''A performant Nim parsing library built for humans.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."microparsec-master".dir   = "master";
  inputs."microparsec-master".owner = "nim-nix-pkgs";
  inputs."microparsec-master".ref   = "master";
  inputs."microparsec-master".repo  = "microparsec";
  inputs."microparsec-master".type  = "github";
  inputs."microparsec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microparsec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microparsec-v0_1-alpha".dir   = "v0_1-alpha";
  inputs."microparsec-v0_1-alpha".owner = "nim-nix-pkgs";
  inputs."microparsec-v0_1-alpha".ref   = "master";
  inputs."microparsec-v0_1-alpha".repo  = "microparsec";
  inputs."microparsec-v0_1-alpha".type  = "github";
  inputs."microparsec-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microparsec-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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