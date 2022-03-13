{
  description = ''Glob pattern matching for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."globby-master".dir   = "master";
  inputs."globby-master".owner = "nim-nix-pkgs";
  inputs."globby-master".ref   = "master";
  inputs."globby-master".repo  = "globby";
  inputs."globby-master".type  = "github";
  inputs."globby-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."globby-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."globby-0_1_0".dir   = "0_1_0";
  inputs."globby-0_1_0".owner = "nim-nix-pkgs";
  inputs."globby-0_1_0".ref   = "master";
  inputs."globby-0_1_0".repo  = "globby";
  inputs."globby-0_1_0".type  = "github";
  inputs."globby-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."globby-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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