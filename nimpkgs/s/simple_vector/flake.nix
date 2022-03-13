{
  description = ''Simple vector library for nim-lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simple_vector-master".dir   = "master";
  inputs."simple_vector-master".owner = "nim-nix-pkgs";
  inputs."simple_vector-master".ref   = "master";
  inputs."simple_vector-master".repo  = "simple_vector";
  inputs."simple_vector-master".type  = "github";
  inputs."simple_vector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_vector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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