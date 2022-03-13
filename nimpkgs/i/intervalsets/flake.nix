{
  description = ''Set implementation of disjoint intervals'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."intervalsets-master".dir   = "master";
  inputs."intervalsets-master".owner = "nim-nix-pkgs";
  inputs."intervalsets-master".ref   = "master";
  inputs."intervalsets-master".repo  = "intervalsets";
  inputs."intervalsets-master".type  = "github";
  inputs."intervalsets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."intervalsets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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