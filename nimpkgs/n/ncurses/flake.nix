{
  description = ''A wrapper for NCurses'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ncurses-master".dir   = "master";
  inputs."ncurses-master".owner = "nim-nix-pkgs";
  inputs."ncurses-master".ref   = "master";
  inputs."ncurses-master".repo  = "ncurses";
  inputs."ncurses-master".type  = "github";
  inputs."ncurses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ncurses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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