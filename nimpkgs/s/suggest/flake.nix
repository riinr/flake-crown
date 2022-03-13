{
  description = ''mmap-persistent SymSpell spell checking algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suggest-master".dir   = "master";
  inputs."suggest-master".owner = "nim-nix-pkgs";
  inputs."suggest-master".ref   = "master";
  inputs."suggest-master".repo  = "suggest";
  inputs."suggest-master".type  = "github";
  inputs."suggest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suggest-v1_0".dir   = "v1_0";
  inputs."suggest-v1_0".owner = "nim-nix-pkgs";
  inputs."suggest-v1_0".ref   = "master";
  inputs."suggest-v1_0".repo  = "suggest";
  inputs."suggest-v1_0".type  = "github";
  inputs."suggest-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suggest-v1_1".dir   = "v1_1";
  inputs."suggest-v1_1".owner = "nim-nix-pkgs";
  inputs."suggest-v1_1".ref   = "master";
  inputs."suggest-v1_1".repo  = "suggest";
  inputs."suggest-v1_1".type  = "github";
  inputs."suggest-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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