{
  description = ''Obsolete - please use oculus instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-oculus-master".dir   = "master";
  inputs."io-oculus-master".owner = "nim-nix-pkgs";
  inputs."io-oculus-master".ref   = "master";
  inputs."io-oculus-master".repo  = "io-oculus";
  inputs."io-oculus-master".type  = "github";
  inputs."io-oculus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-oculus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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