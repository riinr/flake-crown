{
  description = ''Library for detecting the format of a sound file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sndhdr-master".dir   = "master";
  inputs."sndhdr-master".owner = "nim-nix-pkgs";
  inputs."sndhdr-master".ref   = "master";
  inputs."sndhdr-master".repo  = "sndhdr";
  inputs."sndhdr-master".type  = "github";
  inputs."sndhdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sndhdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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