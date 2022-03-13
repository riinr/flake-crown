{
  description = ''Iterator package aimed at more ergonomic and efficient iterators.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slicerator-master".dir   = "master";
  inputs."slicerator-master".owner = "nim-nix-pkgs";
  inputs."slicerator-master".ref   = "master";
  inputs."slicerator-master".repo  = "slicerator";
  inputs."slicerator-master".type  = "github";
  inputs."slicerator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slicerator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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