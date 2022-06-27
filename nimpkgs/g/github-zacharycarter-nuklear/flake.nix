{
  description = ''nim nuklear bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nuklear-master".dir   = "master";
  inputs."nuklear-master".owner = "nim-nix-pkgs";
  inputs."nuklear-master".ref   = "master";
  inputs."nuklear-master".repo  = "nuklear";
  inputs."nuklear-master".type  = "github";
  inputs."nuklear-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuklear-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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