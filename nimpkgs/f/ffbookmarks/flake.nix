{
  description = ''Nim module for working with Firefox bookmarks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ffbookmarks-master".dir   = "master";
  inputs."ffbookmarks-master".owner = "nim-nix-pkgs";
  inputs."ffbookmarks-master".ref   = "master";
  inputs."ffbookmarks-master".repo  = "ffbookmarks";
  inputs."ffbookmarks-master".type  = "github";
  inputs."ffbookmarks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffbookmarks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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