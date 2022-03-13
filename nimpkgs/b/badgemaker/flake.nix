{
  description = ''The Nim badgemaker tool.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."badgemaker-master".dir   = "master";
  inputs."badgemaker-master".owner = "nim-nix-pkgs";
  inputs."badgemaker-master".ref   = "master";
  inputs."badgemaker-master".repo  = "badgemaker";
  inputs."badgemaker-master".type  = "github";
  inputs."badgemaker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."badgemaker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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