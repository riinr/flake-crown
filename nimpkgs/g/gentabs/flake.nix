{
  description = ''Efficient hash table that is a key-value mapping (removed from stdlib)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gentabs-master".dir   = "master";
  inputs."gentabs-master".owner = "nim-nix-pkgs";
  inputs."gentabs-master".ref   = "master";
  inputs."gentabs-master".repo  = "gentabs";
  inputs."gentabs-master".type  = "github";
  inputs."gentabs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gentabs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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