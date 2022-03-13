{
  description = ''NIM bindings for ALSA-LIB c library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."alsa-master".dir   = "master";
  inputs."alsa-master".owner = "nim-nix-pkgs";
  inputs."alsa-master".ref   = "master";
  inputs."alsa-master".repo  = "alsa";
  inputs."alsa-master".type  = "github";
  inputs."alsa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alsa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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