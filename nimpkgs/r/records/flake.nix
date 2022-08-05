{
  description = ''Operations on tuples as heterogeneous record types a la Relational Algebra'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."records-master".dir   = "master";
  inputs."records-master".owner = "nim-nix-pkgs";
  inputs."records-master".ref   = "master";
  inputs."records-master".repo  = "records";
  inputs."records-master".type  = "github";
  inputs."records-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."records-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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