{
  description = ''Export Nim functions to sqlite3'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."exporttosqlite3-main".dir   = "main";
  inputs."exporttosqlite3-main".owner = "nim-nix-pkgs";
  inputs."exporttosqlite3-main".ref   = "master";
  inputs."exporttosqlite3-main".repo  = "exporttosqlite3";
  inputs."exporttosqlite3-main".type  = "github";
  inputs."exporttosqlite3-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exporttosqlite3-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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