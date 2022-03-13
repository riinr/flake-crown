{
  description = ''Nim bindings for p5.js.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimp5-master".dir   = "master";
  inputs."nimp5-master".owner = "nim-nix-pkgs";
  inputs."nimp5-master".ref   = "master";
  inputs."nimp5-master".repo  = "nimp5";
  inputs."nimp5-master".type  = "github";
  inputs."nimp5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimp5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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