{
  description = ''Tuple manipulation utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tuples-master".dir   = "master";
  inputs."tuples-master".owner = "nim-nix-pkgs";
  inputs."tuples-master".ref   = "master";
  inputs."tuples-master".repo  = "tuples";
  inputs."tuples-master".type  = "github";
  inputs."tuples-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tuples-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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