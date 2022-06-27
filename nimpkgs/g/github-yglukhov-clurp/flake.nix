{
  description = ''Slurp C/C++ libraries into Nim world'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clurp-master".dir   = "master";
  inputs."clurp-master".owner = "nim-nix-pkgs";
  inputs."clurp-master".ref   = "master";
  inputs."clurp-master".repo  = "clurp";
  inputs."clurp-master".type  = "github";
  inputs."clurp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clurp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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