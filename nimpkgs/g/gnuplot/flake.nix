{
  description = ''Nim interface to gnuplot'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnuplot-master".dir   = "master";
  inputs."gnuplot-master".owner = "nim-nix-pkgs";
  inputs."gnuplot-master".ref   = "master";
  inputs."gnuplot-master".repo  = "gnuplot";
  inputs."gnuplot-master".type  = "github";
  inputs."gnuplot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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