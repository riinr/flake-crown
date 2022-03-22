{
  description = ''Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kdb-master.flake = false;
  inputs.src-kdb-master.ref   = "refs/heads/master";
  inputs.src-kdb-master.owner = "inv2004";
  inputs.src-kdb-master.repo  = "kdb_nim";
  inputs.src-kdb-master.type  = "github";
  
  inputs."terminaltables".owner = "nim-nix-pkgs";
  inputs."terminaltables".ref   = "master";
  inputs."terminaltables".repo  = "terminaltables";
  inputs."terminaltables".dir   = "";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids".owner = "nim-nix-pkgs";
  inputs."uuids".ref   = "master";
  inputs."uuids".repo  = "uuids";
  inputs."uuids".dir   = "v0_1_11";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kdb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kdb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}