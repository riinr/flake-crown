{
  description = ''Tiled map loader for the Nim programming language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_tiled-master".dir   = "master";
  inputs."nim_tiled-master".owner = "nim-nix-pkgs";
  inputs."nim_tiled-master".ref   = "master";
  inputs."nim_tiled-master".repo  = "nim_tiled";
  inputs."nim_tiled-master".type  = "github";
  inputs."nim_tiled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_tiled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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