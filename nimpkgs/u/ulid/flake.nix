{
  description = ''Universally Unique Lexicographically Sortable Identifier'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ulid-master".dir   = "master";
  inputs."ulid-master".owner = "nim-nix-pkgs";
  inputs."ulid-master".ref   = "master";
  inputs."ulid-master".repo  = "ulid";
  inputs."ulid-master".type  = "github";
  inputs."ulid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ulid-v0_2_0".dir   = "v0_2_0";
  inputs."ulid-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ulid-v0_2_0".ref   = "master";
  inputs."ulid-v0_2_0".repo  = "ulid";
  inputs."ulid-v0_2_0".type  = "github";
  inputs."ulid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ulid-v0_3_0".dir   = "v0_3_0";
  inputs."ulid-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ulid-v0_3_0".ref   = "master";
  inputs."ulid-v0_3_0".repo  = "ulid";
  inputs."ulid-v0_3_0".type  = "github";
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