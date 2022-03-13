{
  description = ''API for Web Audio (JS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webaudio-master".dir   = "master";
  inputs."webaudio-master".owner = "nim-nix-pkgs";
  inputs."webaudio-master".ref   = "master";
  inputs."webaudio-master".repo  = "webaudio";
  inputs."webaudio-master".type  = "github";
  inputs."webaudio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webaudio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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