{
  description = ''Unified database connector.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_connector-master".dir   = "master";
  inputs."db_connector-master".owner = "nim-nix-pkgs";
  inputs."db_connector-master".ref   = "master";
  inputs."db_connector-master".repo  = "db_connector";
  inputs."db_connector-master".type  = "github";
  inputs."db_connector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_connector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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