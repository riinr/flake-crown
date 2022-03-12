{
  description = ''An in-memory SQL database library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_nimternalsql-main".url = "path:./main";
  inputs."db_nimternalsql-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_0_0".url = "path:./v1_0_0";
  inputs."db_nimternalsql-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_1_0".url = "path:./v1_1_0";
  inputs."db_nimternalsql-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}