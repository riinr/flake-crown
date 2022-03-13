{
  description = ''daemonizer for Unix, Linux and OS X'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."daemonim-master".dir   = "master";
  inputs."daemonim-master".owner = "nim-nix-pkgs";
  inputs."daemonim-master".ref   = "master";
  inputs."daemonim-master".repo  = "daemonim";
  inputs."daemonim-master".type  = "github";
  inputs."daemonim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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