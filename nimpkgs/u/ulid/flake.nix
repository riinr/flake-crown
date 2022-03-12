{
  description = ''Universally Unique Lexicographically Sortable Identifier'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ulid-master".url = "path:./master";
  inputs."ulid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ulid-v0_2_0".url = "path:./v0_2_0";
  inputs."ulid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ulid-v0_3_0".url = "path:./v0_3_0";
  inputs."ulid-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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