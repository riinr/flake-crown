{
  description = ''Simpleflake for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simpleflake-master".dir   = "master";
  inputs."simpleflake-master".owner = "nim-nix-pkgs";
  inputs."simpleflake-master".ref   = "master";
  inputs."simpleflake-master".repo  = "simpleflake";
  inputs."simpleflake-master".type  = "github";
  inputs."simpleflake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleflake-v0_1_0".dir   = "v0_1_0";
  inputs."simpleflake-v0_1_0".owner = "nim-nix-pkgs";
  inputs."simpleflake-v0_1_0".ref   = "master";
  inputs."simpleflake-v0_1_0".repo  = "simpleflake";
  inputs."simpleflake-v0_1_0".type  = "github";
  inputs."simpleflake-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleflake-v0_1_1".dir   = "v0_1_1";
  inputs."simpleflake-v0_1_1".owner = "nim-nix-pkgs";
  inputs."simpleflake-v0_1_1".ref   = "master";
  inputs."simpleflake-v0_1_1".repo  = "simpleflake";
  inputs."simpleflake-v0_1_1".type  = "github";
  inputs."simpleflake-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleflake-v0_1_2".dir   = "v0_1_2";
  inputs."simpleflake-v0_1_2".owner = "nim-nix-pkgs";
  inputs."simpleflake-v0_1_2".ref   = "master";
  inputs."simpleflake-v0_1_2".repo  = "simpleflake";
  inputs."simpleflake-v0_1_2".type  = "github";
  inputs."simpleflake-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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