{
  description = ''Nim wrapper for PDCurses'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pdcurses-master".dir   = "master";
  inputs."pdcurses-master".owner = "nim-nix-pkgs";
  inputs."pdcurses-master".ref   = "master";
  inputs."pdcurses-master".repo  = "pdcurses";
  inputs."pdcurses-master".type  = "github";
  inputs."pdcurses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdcurses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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