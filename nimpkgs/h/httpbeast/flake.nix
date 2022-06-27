{
  description = ''A performant and scalable HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpbeast-master".dir   = "master";
  inputs."httpbeast-master".owner = "nim-nix-pkgs";
  inputs."httpbeast-master".ref   = "master";
  inputs."httpbeast-master".repo  = "httpbeast";
  inputs."httpbeast-master".type  = "github";
  inputs."httpbeast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_1_0".dir   = "v0_1_0";
  inputs."httpbeast-v0_1_0".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_1_0".ref   = "master";
  inputs."httpbeast-v0_1_0".repo  = "httpbeast";
  inputs."httpbeast-v0_1_0".type  = "github";
  inputs."httpbeast-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_0".dir   = "v0_2_0";
  inputs."httpbeast-v0_2_0".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_2_0".ref   = "master";
  inputs."httpbeast-v0_2_0".repo  = "httpbeast";
  inputs."httpbeast-v0_2_0".type  = "github";
  inputs."httpbeast-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_1".dir   = "v0_2_1";
  inputs."httpbeast-v0_2_1".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_2_1".ref   = "master";
  inputs."httpbeast-v0_2_1".repo  = "httpbeast";
  inputs."httpbeast-v0_2_1".type  = "github";
  inputs."httpbeast-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_2_2".dir   = "v0_2_2";
  inputs."httpbeast-v0_2_2".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_2_2".ref   = "master";
  inputs."httpbeast-v0_2_2".repo  = "httpbeast";
  inputs."httpbeast-v0_2_2".type  = "github";
  inputs."httpbeast-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_3_0".dir   = "v0_3_0";
  inputs."httpbeast-v0_3_0".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_3_0".ref   = "master";
  inputs."httpbeast-v0_3_0".repo  = "httpbeast";
  inputs."httpbeast-v0_3_0".type  = "github";
  inputs."httpbeast-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_4_0".dir   = "v0_4_0";
  inputs."httpbeast-v0_4_0".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_4_0".ref   = "master";
  inputs."httpbeast-v0_4_0".repo  = "httpbeast";
  inputs."httpbeast-v0_4_0".type  = "github";
  inputs."httpbeast-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast-v0_4_1".dir   = "v0_4_1";
  inputs."httpbeast-v0_4_1".owner = "nim-nix-pkgs";
  inputs."httpbeast-v0_4_1".ref   = "master";
  inputs."httpbeast-v0_4_1".repo  = "httpbeast";
  inputs."httpbeast-v0_4_1".type  = "github";
  inputs."httpbeast-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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