{
  description = ''An Atom, RSS, and JSONfeed parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."feednim-master".dir   = "master";
  inputs."feednim-master".owner = "nim-nix-pkgs";
  inputs."feednim-master".ref   = "master";
  inputs."feednim-master".repo  = "feednim";
  inputs."feednim-master".type  = "github";
  inputs."feednim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feednim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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