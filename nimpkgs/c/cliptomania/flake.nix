{
  description = ''.NET-inspired lightweight clipboard library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cliptomania-master".dir   = "master";
  inputs."cliptomania-master".owner = "nim-nix-pkgs";
  inputs."cliptomania-master".ref   = "master";
  inputs."cliptomania-master".repo  = "cliptomania";
  inputs."cliptomania-master".type  = "github";
  inputs."cliptomania-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cliptomania-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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