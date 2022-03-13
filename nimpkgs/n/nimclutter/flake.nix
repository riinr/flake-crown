{
  description = ''Nim bindings for Clutter toolkit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimclutter-master".dir   = "master";
  inputs."nimclutter-master".owner = "nim-nix-pkgs";
  inputs."nimclutter-master".ref   = "master";
  inputs."nimclutter-master".repo  = "nimclutter";
  inputs."nimclutter-master".type  = "github";
  inputs."nimclutter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclutter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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