{
  description = ''A collection of reusable modules and wrappers.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fowltek-master".dir   = "master";
  inputs."fowltek-master".owner = "nim-nix-pkgs";
  inputs."fowltek-master".ref   = "master";
  inputs."fowltek-master".repo  = "fowltek";
  inputs."fowltek-master".type  = "github";
  inputs."fowltek-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fowltek-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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