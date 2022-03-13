{
  description = ''Obsolete - please use spacenav instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-spacenav-master".dir   = "master";
  inputs."io-spacenav-master".owner = "nim-nix-pkgs";
  inputs."io-spacenav-master".ref   = "master";
  inputs."io-spacenav-master".repo  = "io-spacenav";
  inputs."io-spacenav-master".type  = "github";
  inputs."io-spacenav-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-spacenav-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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