{
  description = ''A small wrapper around PortAudio for cross-platform audio IO.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nordaudio-main".dir   = "main";
  inputs."nordaudio-main".owner = "nim-nix-pkgs";
  inputs."nordaudio-main".ref   = "master";
  inputs."nordaudio-main".repo  = "nordaudio";
  inputs."nordaudio-main".type  = "github";
  inputs."nordaudio-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordaudio-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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