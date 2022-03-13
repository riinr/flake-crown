{
  description = ''Bindings for golib - a library that (ab)uses gccgo to bring Go's channels and goroutines to the rest of the world'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."golib-master".dir   = "master";
  inputs."golib-master".owner = "nim-nix-pkgs";
  inputs."golib-master".ref   = "master";
  inputs."golib-master".repo  = "golib";
  inputs."golib-master".type  = "github";
  inputs."golib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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