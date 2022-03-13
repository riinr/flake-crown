{
  description = ''Game Library in Nim with SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tinamou-master".dir   = "master";
  inputs."tinamou-master".owner = "nim-nix-pkgs";
  inputs."tinamou-master".ref   = "master";
  inputs."tinamou-master".repo  = "tinamou";
  inputs."tinamou-master".type  = "github";
  inputs."tinamou-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinamou-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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