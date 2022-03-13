{
  description = ''Euclidean Division & Euclidean Modulo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."euclidean-master".dir   = "master";
  inputs."euclidean-master".owner = "nim-nix-pkgs";
  inputs."euclidean-master".ref   = "master";
  inputs."euclidean-master".repo  = "euclidean";
  inputs."euclidean-master".type  = "github";
  inputs."euclidean-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euclidean-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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