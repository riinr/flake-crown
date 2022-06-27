{
  description = ''Various asynchronous tools for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asynctools-master".dir   = "master";
  inputs."asynctools-master".owner = "nim-nix-pkgs";
  inputs."asynctools-master".ref   = "master";
  inputs."asynctools-master".repo  = "asynctools";
  inputs."asynctools-master".type  = "github";
  inputs."asynctools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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