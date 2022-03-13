{
  description = ''Nim module for generating URL identifiers for Tiny URL and bit.ly-like URLs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shorturl-master".dir   = "master";
  inputs."shorturl-master".owner = "nim-nix-pkgs";
  inputs."shorturl-master".ref   = "master";
  inputs."shorturl-master".repo  = "shorturl";
  inputs."shorturl-master".type  = "github";
  inputs."shorturl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shorturl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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