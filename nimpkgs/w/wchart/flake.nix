{
  description = ''Chart plugin for wNim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wchart-master".dir   = "master";
  inputs."wchart-master".owner = "nim-nix-pkgs";
  inputs."wchart-master".ref   = "master";
  inputs."wchart-master".repo  = "wchart";
  inputs."wchart-master".type  = "github";
  inputs."wchart-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wchart-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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