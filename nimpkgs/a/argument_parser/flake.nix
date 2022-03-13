{
  description = ''Provides a complex command-line parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argument_parser-master".dir   = "master";
  inputs."argument_parser-master".owner = "nim-nix-pkgs";
  inputs."argument_parser-master".ref   = "master";
  inputs."argument_parser-master".repo  = "argument_parser";
  inputs."argument_parser-master".type  = "github";
  inputs."argument_parser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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