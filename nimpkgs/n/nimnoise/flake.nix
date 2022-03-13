{
  description = ''A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimnoise-master".dir   = "master";
  inputs."nimnoise-master".owner = "nim-nix-pkgs";
  inputs."nimnoise-master".ref   = "master";
  inputs."nimnoise-master".repo  = "nimnoise";
  inputs."nimnoise-master".type  = "github";
  inputs."nimnoise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnoise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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