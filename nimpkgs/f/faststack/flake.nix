{
  description = ''Dynamically resizable data structure optimized for fast iteration.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."faststack-master".dir   = "master";
  inputs."faststack-master".owner = "nim-nix-pkgs";
  inputs."faststack-master".ref   = "master";
  inputs."faststack-master".repo  = "faststack";
  inputs."faststack-master".type  = "github";
  inputs."faststack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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