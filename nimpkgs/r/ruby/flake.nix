{
  description = ''Bindings for libruby and high-level Ruby embedding framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ruby-develop".dir   = "develop";
  inputs."ruby-develop".owner = "nim-nix-pkgs";
  inputs."ruby-develop".ref   = "master";
  inputs."ruby-develop".repo  = "ruby";
  inputs."ruby-develop".type  = "github";
  inputs."ruby-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-master".dir   = "master";
  inputs."ruby-master".owner = "nim-nix-pkgs";
  inputs."ruby-master".ref   = "master";
  inputs."ruby-master".repo  = "ruby";
  inputs."ruby-master".type  = "github";
  inputs."ruby-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-v0_1_0".dir   = "v0_1_0";
  inputs."ruby-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ruby-v0_1_0".ref   = "master";
  inputs."ruby-v0_1_0".repo  = "ruby";
  inputs."ruby-v0_1_0".type  = "github";
  inputs."ruby-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-v0_2_0".dir   = "v0_2_0";
  inputs."ruby-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ruby-v0_2_0".ref   = "master";
  inputs."ruby-v0_2_0".repo  = "ruby";
  inputs."ruby-v0_2_0".type  = "github";
  inputs."ruby-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-v0_3_0".dir   = "v0_3_0";
  inputs."ruby-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ruby-v0_3_0".ref   = "master";
  inputs."ruby-v0_3_0".repo  = "ruby";
  inputs."ruby-v0_3_0".type  = "github";
  inputs."ruby-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-v0_3_1".dir   = "v0_3_1";
  inputs."ruby-v0_3_1".owner = "nim-nix-pkgs";
  inputs."ruby-v0_3_1".ref   = "master";
  inputs."ruby-v0_3_1".repo  = "ruby";
  inputs."ruby-v0_3_1".type  = "github";
  inputs."ruby-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ruby-v0_4_0".dir   = "v0_4_0";
  inputs."ruby-v0_4_0".owner = "nim-nix-pkgs";
  inputs."ruby-v0_4_0".ref   = "master";
  inputs."ruby-v0_4_0".repo  = "ruby";
  inputs."ruby-v0_4_0".type  = "github";
  inputs."ruby-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ruby-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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