{
  description = ''Low level wrapper for the fontconfig library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fontconfig-master".dir   = "master";
  inputs."fontconfig-master".owner = "nim-nix-pkgs";
  inputs."fontconfig-master".ref   = "master";
  inputs."fontconfig-master".repo  = "fontconfig";
  inputs."fontconfig-master".type  = "github";
  inputs."fontconfig-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fontconfig-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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