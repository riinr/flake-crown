{
  description = ''Freetype2 Wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."freetype-master".dir   = "master";
  inputs."freetype-master".owner = "nim-nix-pkgs";
  inputs."freetype-master".ref   = "master";
  inputs."freetype-master".repo  = "freetype";
  inputs."freetype-master".type  = "github";
  inputs."freetype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freetype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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