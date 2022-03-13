{
  description = ''A game engine for rapid development and easy prototyping'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rapid-master".dir   = "master";
  inputs."rapid-master".owner = "nim-nix-pkgs";
  inputs."rapid-master".ref   = "master";
  inputs."rapid-master".repo  = "rapid";
  inputs."rapid-master".type  = "github";
  inputs."rapid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rapid-2019_1".dir   = "2019_1";
  inputs."rapid-2019_1".owner = "nim-nix-pkgs";
  inputs."rapid-2019_1".ref   = "master";
  inputs."rapid-2019_1".repo  = "rapid";
  inputs."rapid-2019_1".type  = "github";
  inputs."rapid-2019_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-2019_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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