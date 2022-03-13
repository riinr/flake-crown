{
  description = ''Extensible bit vector integer encoding library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitvec-master".dir   = "master";
  inputs."bitvec-master".owner = "nim-nix-pkgs";
  inputs."bitvec-master".ref   = "master";
  inputs."bitvec-master".repo  = "bitvec";
  inputs."bitvec-master".type  = "github";
  inputs."bitvec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitvec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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