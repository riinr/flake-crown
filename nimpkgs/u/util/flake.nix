{
  description = ''Small utilities that isn't large enough to have a individual modules'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."util-master".dir   = "master";
  inputs."util-master".owner = "nim-nix-pkgs";
  inputs."util-master".ref   = "master";
  inputs."util-master".repo  = "util";
  inputs."util-master".type  = "github";
  inputs."util-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."util-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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