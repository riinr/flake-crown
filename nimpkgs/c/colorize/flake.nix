{
  description = ''A simple and lightweight terminal coloring library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."colorize-master".dir   = "master";
  inputs."colorize-master".owner = "nim-nix-pkgs";
  inputs."colorize-master".ref   = "master";
  inputs."colorize-master".repo  = "colorize";
  inputs."colorize-master".type  = "github";
  inputs."colorize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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