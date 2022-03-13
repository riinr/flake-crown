{
  description = ''Unroll for-loops at compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unrolled-master".dir   = "master";
  inputs."unrolled-master".owner = "nim-nix-pkgs";
  inputs."unrolled-master".ref   = "master";
  inputs."unrolled-master".repo  = "unrolled";
  inputs."unrolled-master".type  = "github";
  inputs."unrolled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unrolled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unrolled-v0_1-alpha".dir   = "v0_1-alpha";
  inputs."unrolled-v0_1-alpha".owner = "nim-nix-pkgs";
  inputs."unrolled-v0_1-alpha".ref   = "master";
  inputs."unrolled-v0_1-alpha".repo  = "unrolled";
  inputs."unrolled-v0_1-alpha".type  = "github";
  inputs."unrolled-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unrolled-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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