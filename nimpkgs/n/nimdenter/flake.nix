{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimdenter-master".dir   = "master";
  inputs."nimdenter-master".owner = "nim-nix-pkgs";
  inputs."nimdenter-master".ref   = "master";
  inputs."nimdenter-master".repo  = "nimdenter";
  inputs."nimdenter-master".type  = "github";
  inputs."nimdenter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimdenter-2022_1_7".dir   = "2022_1_7";
  inputs."nimdenter-2022_1_7".owner = "nim-nix-pkgs";
  inputs."nimdenter-2022_1_7".ref   = "master";
  inputs."nimdenter-2022_1_7".repo  = "nimdenter";
  inputs."nimdenter-2022_1_7".type  = "github";
  inputs."nimdenter-2022_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-2022_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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