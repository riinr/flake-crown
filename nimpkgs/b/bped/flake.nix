{
  description = ''Nim implementation of the Bittorrent ascii serialization protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bped-master".dir   = "master";
  inputs."bped-master".owner = "nim-nix-pkgs";
  inputs."bped-master".ref   = "master";
  inputs."bped-master".repo  = "bped";
  inputs."bped-master".type  = "github";
  inputs."bped-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bped-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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