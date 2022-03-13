{
  description = ''Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimterlingua-master".dir   = "master";
  inputs."nimterlingua-master".owner = "nim-nix-pkgs";
  inputs."nimterlingua-master".ref   = "master";
  inputs."nimterlingua-master".repo  = "nimterlingua";
  inputs."nimterlingua-master".type  = "github";
  inputs."nimterlingua-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterlingua-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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