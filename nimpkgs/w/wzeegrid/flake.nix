{
  description = ''Grid plugin for wNim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wzeegrid-master".dir   = "master";
  inputs."wzeegrid-master".owner = "nim-nix-pkgs";
  inputs."wzeegrid-master".ref   = "master";
  inputs."wzeegrid-master".repo  = "wzeegrid";
  inputs."wzeegrid-master".type  = "github";
  inputs."wzeegrid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wzeegrid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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