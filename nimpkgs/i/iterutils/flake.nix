{
  description = ''Functional operations for iterators and slices, similar to sequtils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."iterutils-master".dir   = "master";
  inputs."iterutils-master".owner = "nim-nix-pkgs";
  inputs."iterutils-master".ref   = "master";
  inputs."iterutils-master".repo  = "iterutils";
  inputs."iterutils-master".type  = "github";
  inputs."iterutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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