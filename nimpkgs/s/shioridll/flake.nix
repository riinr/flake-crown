{
  description = ''The SHIORI DLL interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shioridll-master".dir   = "master";
  inputs."shioridll-master".owner = "nim-nix-pkgs";
  inputs."shioridll-master".ref   = "master";
  inputs."shioridll-master".repo  = "shioridll";
  inputs."shioridll-master".type  = "github";
  inputs."shioridll-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v1_0_0".dir   = "v1_0_0";
  inputs."shioridll-v1_0_0".owner = "nim-nix-pkgs";
  inputs."shioridll-v1_0_0".ref   = "master";
  inputs."shioridll-v1_0_0".repo  = "shioridll";
  inputs."shioridll-v1_0_0".type  = "github";
  inputs."shioridll-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v1_0_1".dir   = "v1_0_1";
  inputs."shioridll-v1_0_1".owner = "nim-nix-pkgs";
  inputs."shioridll-v1_0_1".ref   = "master";
  inputs."shioridll-v1_0_1".repo  = "shioridll";
  inputs."shioridll-v1_0_1".type  = "github";
  inputs."shioridll-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v2_0_0".dir   = "v2_0_0";
  inputs."shioridll-v2_0_0".owner = "nim-nix-pkgs";
  inputs."shioridll-v2_0_0".ref   = "master";
  inputs."shioridll-v2_0_0".repo  = "shioridll";
  inputs."shioridll-v2_0_0".type  = "github";
  inputs."shioridll-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v3_0_0".dir   = "v3_0_0";
  inputs."shioridll-v3_0_0".owner = "nim-nix-pkgs";
  inputs."shioridll-v3_0_0".ref   = "master";
  inputs."shioridll-v3_0_0".repo  = "shioridll";
  inputs."shioridll-v3_0_0".type  = "github";
  inputs."shioridll-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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