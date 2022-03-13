{
  description = ''A very simple vector library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vec-master".dir   = "master";
  inputs."vec-master".owner = "nim-nix-pkgs";
  inputs."vec-master".ref   = "master";
  inputs."vec-master".repo  = "vec";
  inputs."vec-master".type  = "github";
  inputs."vec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vec-v1_0".dir   = "v1_0";
  inputs."vec-v1_0".owner = "nim-nix-pkgs";
  inputs."vec-v1_0".ref   = "master";
  inputs."vec-v1_0".repo  = "vec";
  inputs."vec-v1_0".type  = "github";
  inputs."vec-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vec-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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