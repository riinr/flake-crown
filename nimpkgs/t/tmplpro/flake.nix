{
  description = ''Text template processor, basic capabilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tmplpro-master".dir   = "master";
  inputs."tmplpro-master".owner = "nim-nix-pkgs";
  inputs."tmplpro-master".ref   = "master";
  inputs."tmplpro-master".repo  = "tmplpro";
  inputs."tmplpro-master".type  = "github";
  inputs."tmplpro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-unstable".dir   = "unstable";
  inputs."tmplpro-unstable".owner = "nim-nix-pkgs";
  inputs."tmplpro-unstable".ref   = "master";
  inputs."tmplpro-unstable".repo  = "tmplpro";
  inputs."tmplpro-unstable".type  = "github";
  inputs."tmplpro-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_0".dir   = "v0_1_0";
  inputs."tmplpro-v0_1_0".owner = "nim-nix-pkgs";
  inputs."tmplpro-v0_1_0".ref   = "master";
  inputs."tmplpro-v0_1_0".repo  = "tmplpro";
  inputs."tmplpro-v0_1_0".type  = "github";
  inputs."tmplpro-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_1".dir   = "v0_1_1";
  inputs."tmplpro-v0_1_1".owner = "nim-nix-pkgs";
  inputs."tmplpro-v0_1_1".ref   = "master";
  inputs."tmplpro-v0_1_1".repo  = "tmplpro";
  inputs."tmplpro-v0_1_1".type  = "github";
  inputs."tmplpro-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_2".dir   = "v0_1_2";
  inputs."tmplpro-v0_1_2".owner = "nim-nix-pkgs";
  inputs."tmplpro-v0_1_2".ref   = "master";
  inputs."tmplpro-v0_1_2".repo  = "tmplpro";
  inputs."tmplpro-v0_1_2".type  = "github";
  inputs."tmplpro-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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