{
  description = ''Wrapper for the fswatch library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fswatch-master".dir   = "master";
  inputs."fswatch-master".owner = "nim-nix-pkgs";
  inputs."fswatch-master".ref   = "master";
  inputs."fswatch-master".repo  = "fswatch";
  inputs."fswatch-master".type  = "github";
  inputs."fswatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fswatch-0_1_0".dir   = "0_1_0";
  inputs."fswatch-0_1_0".owner = "nim-nix-pkgs";
  inputs."fswatch-0_1_0".ref   = "master";
  inputs."fswatch-0_1_0".repo  = "fswatch";
  inputs."fswatch-0_1_0".type  = "github";
  inputs."fswatch-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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