{
  description = ''Very simple PostgreSQL async api for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pg-master".dir   = "master";
  inputs."pg-master".owner = "nim-nix-pkgs";
  inputs."pg-master".ref   = "master";
  inputs."pg-master".repo  = "pg";
  inputs."pg-master".type  = "github";
  inputs."pg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg-0_1_0".dir   = "0_1_0";
  inputs."pg-0_1_0".owner = "nim-nix-pkgs";
  inputs."pg-0_1_0".ref   = "master";
  inputs."pg-0_1_0".repo  = "pg";
  inputs."pg-0_1_0".type  = "github";
  inputs."pg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg-v0_1_0".dir   = "v0_1_0";
  inputs."pg-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pg-v0_1_0".ref   = "master";
  inputs."pg-v0_1_0".repo  = "pg";
  inputs."pg-v0_1_0".type  = "github";
  inputs."pg-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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