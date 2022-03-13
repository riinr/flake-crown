{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sequester-master".dir   = "master";
  inputs."sequester-master".owner = "nim-nix-pkgs";
  inputs."sequester-master".ref   = "master";
  inputs."sequester-master".repo  = "sequester";
  inputs."sequester-master".type  = "github";
  inputs."sequester-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequester-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sequester-v0_1_0".dir   = "v0_1_0";
  inputs."sequester-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sequester-v0_1_0".ref   = "master";
  inputs."sequester-v0_1_0".repo  = "sequester";
  inputs."sequester-v0_1_0".type  = "github";
  inputs."sequester-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequester-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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