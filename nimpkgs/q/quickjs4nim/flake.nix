{
  description = ''A QuickJS wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."quickjs4nim-master".dir   = "master";
  inputs."quickjs4nim-master".owner = "nim-nix-pkgs";
  inputs."quickjs4nim-master".ref   = "master";
  inputs."quickjs4nim-master".repo  = "quickjs4nim";
  inputs."quickjs4nim-master".type  = "github";
  inputs."quickjs4nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjs4nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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