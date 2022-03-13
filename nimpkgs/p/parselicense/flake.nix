{
  description = ''Parse Standard SPDX Licenses from string to Enum'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parselicense-master".dir   = "master";
  inputs."parselicense-master".owner = "nim-nix-pkgs";
  inputs."parselicense-master".ref   = "master";
  inputs."parselicense-master".repo  = "parselicense";
  inputs."parselicense-master".type  = "github";
  inputs."parselicense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parselicense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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