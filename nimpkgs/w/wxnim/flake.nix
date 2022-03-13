{
  description = ''Nim wrapper for wxWidgets. Also contains high-level genui macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wxnim-master".dir   = "master";
  inputs."wxnim-master".owner = "nim-nix-pkgs";
  inputs."wxnim-master".ref   = "master";
  inputs."wxnim-master".repo  = "wxnim";
  inputs."wxnim-master".type  = "github";
  inputs."wxnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wxnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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