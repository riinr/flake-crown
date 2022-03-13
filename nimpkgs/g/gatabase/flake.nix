{
  description = ''Postgres Database ORM for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gatabase-master".dir   = "master";
  inputs."gatabase-master".owner = "nim-nix-pkgs";
  inputs."gatabase-master".ref   = "master";
  inputs."gatabase-master".repo  = "gatabase";
  inputs."gatabase-master".type  = "github";
  inputs."gatabase-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gatabase-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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