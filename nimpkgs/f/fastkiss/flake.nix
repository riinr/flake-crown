{
  description = ''FastCGI Web Framework for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fastkiss-master".dir   = "master";
  inputs."fastkiss-master".owner = "nim-nix-pkgs";
  inputs."fastkiss-master".ref   = "master";
  inputs."fastkiss-master".repo  = "fastkiss";
  inputs."fastkiss-master".type  = "github";
  inputs."fastkiss-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastkiss-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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