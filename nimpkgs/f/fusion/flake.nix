{
  description = ''Nim's official stdlib extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fusion-master".dir   = "master";
  inputs."fusion-master".owner = "nim-nix-pkgs";
  inputs."fusion-master".ref   = "master";
  inputs."fusion-master".repo  = "fusion";
  inputs."fusion-master".type  = "github";
  inputs."fusion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion-v1_0".dir   = "v1_0";
  inputs."fusion-v1_0".owner = "nim-nix-pkgs";
  inputs."fusion-v1_0".ref   = "master";
  inputs."fusion-v1_0".repo  = "fusion";
  inputs."fusion-v1_0".type  = "github";
  inputs."fusion-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion-v1_1".dir   = "v1_1";
  inputs."fusion-v1_1".owner = "nim-nix-pkgs";
  inputs."fusion-v1_1".ref   = "master";
  inputs."fusion-v1_1".repo  = "fusion";
  inputs."fusion-v1_1".type  = "github";
  inputs."fusion-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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