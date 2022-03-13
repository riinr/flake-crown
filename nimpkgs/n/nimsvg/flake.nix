{
  description = ''Nim-based DSL allowing to generate SVG files and GIF animations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsvg-master".dir   = "master";
  inputs."nimsvg-master".owner = "nim-nix-pkgs";
  inputs."nimsvg-master".ref   = "master";
  inputs."nimsvg-master".repo  = "nimsvg";
  inputs."nimsvg-master".type  = "github";
  inputs."nimsvg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsvg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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