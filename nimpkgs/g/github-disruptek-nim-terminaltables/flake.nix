{
  description = ''terminal tables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."terminaltables-master".dir   = "master";
  inputs."terminaltables-master".owner = "nim-nix-pkgs";
  inputs."terminaltables-master".ref   = "master";
  inputs."terminaltables-master".repo  = "terminaltables";
  inputs."terminaltables-master".type  = "github";
  inputs."terminaltables-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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