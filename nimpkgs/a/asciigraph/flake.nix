{
  description = ''Console ascii line charts in pure nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asciigraph-master".dir   = "master";
  inputs."asciigraph-master".owner = "nim-nix-pkgs";
  inputs."asciigraph-master".ref   = "master";
  inputs."asciigraph-master".repo  = "asciigraph";
  inputs."asciigraph-master".type  = "github";
  inputs."asciigraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciigraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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