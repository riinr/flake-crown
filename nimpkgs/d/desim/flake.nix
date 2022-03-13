{
  description = ''A lightweight discrete event simulator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."desim-master".dir   = "master";
  inputs."desim-master".owner = "nim-nix-pkgs";
  inputs."desim-master".ref   = "master";
  inputs."desim-master".repo  = "desim";
  inputs."desim-master".type  = "github";
  inputs."desim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."desim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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