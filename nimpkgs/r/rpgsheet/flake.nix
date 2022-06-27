{
  description = ''System-agnostic CLI/TUI for tabletop roleplaying game character sheets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rpgsheet-master".dir   = "master";
  inputs."rpgsheet-master".owner = "nim-nix-pkgs";
  inputs."rpgsheet-master".ref   = "master";
  inputs."rpgsheet-master".repo  = "rpgsheet";
  inputs."rpgsheet-master".type  = "github";
  inputs."rpgsheet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rpgsheet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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