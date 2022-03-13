{
  description = ''ctrulib wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ctrulib-master".dir   = "master";
  inputs."ctrulib-master".owner = "nim-nix-pkgs";
  inputs."ctrulib-master".ref   = "master";
  inputs."ctrulib-master".repo  = "ctrulib";
  inputs."ctrulib-master".type  = "github";
  inputs."ctrulib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ctrulib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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