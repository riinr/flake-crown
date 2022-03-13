{
  description = ''this libraly able to use database/sql of Go'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_wrapper-master".dir   = "master";
  inputs."db_wrapper-master".owner = "nim-nix-pkgs";
  inputs."db_wrapper-master".ref   = "master";
  inputs."db_wrapper-master".repo  = "db_wrapper";
  inputs."db_wrapper-master".type  = "github";
  inputs."db_wrapper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_wrapper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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