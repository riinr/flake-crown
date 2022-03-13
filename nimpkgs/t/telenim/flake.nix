{
  description = ''A high-level async TDLib wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."telenim-master".dir   = "master";
  inputs."telenim-master".owner = "nim-nix-pkgs";
  inputs."telenim-master".ref   = "master";
  inputs."telenim-master".repo  = "telenim";
  inputs."telenim-master".type  = "github";
  inputs."telenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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