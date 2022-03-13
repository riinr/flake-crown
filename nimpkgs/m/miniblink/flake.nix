{
  description = ''A miniblink library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."miniblink-master".dir   = "master";
  inputs."miniblink-master".owner = "nim-nix-pkgs";
  inputs."miniblink-master".ref   = "master";
  inputs."miniblink-master".repo  = "miniblink";
  inputs."miniblink-master".type  = "github";
  inputs."miniblink-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniblink-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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