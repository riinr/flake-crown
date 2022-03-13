{
  description = ''Library for detecting the format of an video file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vidhdr-master".dir   = "master";
  inputs."vidhdr-master".owner = "nim-nix-pkgs";
  inputs."vidhdr-master".ref   = "master";
  inputs."vidhdr-master".repo  = "vidhdr";
  inputs."vidhdr-master".type  = "github";
  inputs."vidhdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vidhdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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