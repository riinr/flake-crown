{
  description = ''Nim wrapper for miniz'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_miniz-master".dir   = "master";
  inputs."nim_miniz-master".owner = "nim-nix-pkgs";
  inputs."nim_miniz-master".ref   = "master";
  inputs."nim_miniz-master".repo  = "nim_miniz";
  inputs."nim_miniz-master".type  = "github";
  inputs."nim_miniz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_miniz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_miniz-1_0_1".dir   = "1_0_1";
  inputs."nim_miniz-1_0_1".owner = "nim-nix-pkgs";
  inputs."nim_miniz-1_0_1".ref   = "master";
  inputs."nim_miniz-1_0_1".repo  = "nim_miniz";
  inputs."nim_miniz-1_0_1".type  = "github";
  inputs."nim_miniz-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_miniz-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_miniz-1_1_0".dir   = "1_1_0";
  inputs."nim_miniz-1_1_0".owner = "nim-nix-pkgs";
  inputs."nim_miniz-1_1_0".ref   = "master";
  inputs."nim_miniz-1_1_0".repo  = "nim_miniz";
  inputs."nim_miniz-1_1_0".type  = "github";
  inputs."nim_miniz-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_miniz-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_miniz-v1_0_0".dir   = "v1_0_0";
  inputs."nim_miniz-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nim_miniz-v1_0_0".ref   = "master";
  inputs."nim_miniz-v1_0_0".repo  = "nim_miniz";
  inputs."nim_miniz-v1_0_0".type  = "github";
  inputs."nim_miniz-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_miniz-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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