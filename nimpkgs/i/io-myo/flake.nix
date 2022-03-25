{
  description = ''Obsolete - please use myo instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."myo-master".dir   = "master";
  inputs."myo-master".owner = "nim-nix-pkgs";
  inputs."myo-master".ref   = "master";
  inputs."myo-master".repo  = "myo";
  inputs."myo-master".type  = "github";
  inputs."myo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."myo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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