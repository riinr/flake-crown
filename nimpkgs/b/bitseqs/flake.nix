{
  description = ''Utility for a bit manipulation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitseqs-master".dir   = "master";
  inputs."bitseqs-master".owner = "nim-nix-pkgs";
  inputs."bitseqs-master".ref   = "master";
  inputs."bitseqs-master".repo  = "bitseqs";
  inputs."bitseqs-master".type  = "github";
  inputs."bitseqs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitseqs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitfields-v0_1_0".dir   = "v0_1_0";
  inputs."bitfields-v0_1_0".owner = "nim-nix-pkgs";
  inputs."bitfields-v0_1_0".ref   = "master";
  inputs."bitfields-v0_1_0".repo  = "bitfields";
  inputs."bitfields-v0_1_0".type  = "github";
  inputs."bitfields-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitfields-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitseqs-v0_1_1".dir   = "v0_1_1";
  inputs."bitseqs-v0_1_1".owner = "nim-nix-pkgs";
  inputs."bitseqs-v0_1_1".ref   = "master";
  inputs."bitseqs-v0_1_1".repo  = "bitseqs";
  inputs."bitseqs-v0_1_1".type  = "github";
  inputs."bitseqs-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitseqs-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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