{
  description = ''Bindings and a high-level interface for MongoDB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mongo-master".dir   = "master";
  inputs."mongo-master".owner = "nim-nix-pkgs";
  inputs."mongo-master".ref   = "master";
  inputs."mongo-master".repo  = "mongo";
  inputs."mongo-master".type  = "github";
  inputs."mongo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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