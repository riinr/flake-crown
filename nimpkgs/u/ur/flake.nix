{
  description = ''A Universal Result macro/object that normalizes the information returned from a procedure'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ur-master".dir   = "master";
  inputs."ur-master".owner = "nim-nix-pkgs";
  inputs."ur-master".ref   = "master";
  inputs."ur-master".repo  = "ur";
  inputs."ur-master".type  = "github";
  inputs."ur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ur-v0_1_1".dir   = "v0_1_1";
  inputs."ur-v0_1_1".owner = "nim-nix-pkgs";
  inputs."ur-v0_1_1".ref   = "master";
  inputs."ur-v0_1_1".repo  = "ur";
  inputs."ur-v0_1_1".type  = "github";
  inputs."ur-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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