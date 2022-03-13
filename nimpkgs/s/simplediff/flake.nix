{
  description = ''A library for straightforward diff calculation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simplediff-master".dir   = "master";
  inputs."simplediff-master".owner = "nim-nix-pkgs";
  inputs."simplediff-master".ref   = "master";
  inputs."simplediff-master".repo  = "simplediff";
  inputs."simplediff-master".type  = "github";
  inputs."simplediff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplediff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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