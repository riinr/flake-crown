{
  description = ''macro-based HTML templating engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."emerald-master".dir   = "master";
  inputs."emerald-master".owner = "nim-nix-pkgs";
  inputs."emerald-master".ref   = "master";
  inputs."emerald-master".repo  = "emerald";
  inputs."emerald-master".type  = "github";
  inputs."emerald-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emerald-v0_1_0".dir   = "v0_1_0";
  inputs."emerald-v0_1_0".owner = "nim-nix-pkgs";
  inputs."emerald-v0_1_0".ref   = "master";
  inputs."emerald-v0_1_0".repo  = "emerald";
  inputs."emerald-v0_1_0".type  = "github";
  inputs."emerald-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emerald-v0_2_0".dir   = "v0_2_0";
  inputs."emerald-v0_2_0".owner = "nim-nix-pkgs";
  inputs."emerald-v0_2_0".ref   = "master";
  inputs."emerald-v0_2_0".repo  = "emerald";
  inputs."emerald-v0_2_0".type  = "github";
  inputs."emerald-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emerald-v0_2_1".dir   = "v0_2_1";
  inputs."emerald-v0_2_1".owner = "nim-nix-pkgs";
  inputs."emerald-v0_2_1".ref   = "master";
  inputs."emerald-v0_2_1".repo  = "emerald";
  inputs."emerald-v0_2_1".type  = "github";
  inputs."emerald-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emerald-v0_2_2".dir   = "v0_2_2";
  inputs."emerald-v0_2_2".owner = "nim-nix-pkgs";
  inputs."emerald-v0_2_2".ref   = "master";
  inputs."emerald-v0_2_2".repo  = "emerald";
  inputs."emerald-v0_2_2".type  = "github";
  inputs."emerald-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emerald-v0_2_3".dir   = "v0_2_3";
  inputs."emerald-v0_2_3".owner = "nim-nix-pkgs";
  inputs."emerald-v0_2_3".ref   = "master";
  inputs."emerald-v0_2_3".repo  = "emerald";
  inputs."emerald-v0_2_3".type  = "github";
  inputs."emerald-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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