{
  description = ''Obsolete - please use myo instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-myo-master".dir   = "master";
  inputs."io-myo-master".owner = "nim-nix-pkgs";
  inputs."io-myo-master".ref   = "master";
  inputs."io-myo-master".repo  = "io-myo";
  inputs."io-myo-master".type  = "github";
  inputs."io-myo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-myo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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