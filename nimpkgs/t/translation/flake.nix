{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."translation-master".dir   = "master";
  inputs."translation-master".owner = "nim-nix-pkgs";
  inputs."translation-master".ref   = "master";
  inputs."translation-master".repo  = "translation";
  inputs."translation-master".type  = "github";
  inputs."translation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-0_2_0".dir   = "0_2_0";
  inputs."translation-0_2_0".owner = "nim-nix-pkgs";
  inputs."translation-0_2_0".ref   = "master";
  inputs."translation-0_2_0".repo  = "translation";
  inputs."translation-0_2_0".type  = "github";
  inputs."translation-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-0_3_1".dir   = "0_3_1";
  inputs."translation-0_3_1".owner = "nim-nix-pkgs";
  inputs."translation-0_3_1".ref   = "master";
  inputs."translation-0_3_1".repo  = "translation";
  inputs."translation-0_3_1".type  = "github";
  inputs."translation-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-v0_1_0".dir   = "v0_1_0";
  inputs."translation-v0_1_0".owner = "nim-nix-pkgs";
  inputs."translation-v0_1_0".ref   = "master";
  inputs."translation-v0_1_0".repo  = "translation";
  inputs."translation-v0_1_0".type  = "github";
  inputs."translation-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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