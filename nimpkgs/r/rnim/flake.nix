{
  description = ''A bridge between R and Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rnim-master".dir   = "master";
  inputs."rnim-master".owner = "nim-nix-pkgs";
  inputs."rnim-master".ref   = "master";
  inputs."rnim-master".repo  = "rnim";
  inputs."rnim-master".type  = "github";
  inputs."rnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_1".dir   = "v0_1_1";
  inputs."rnim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."rnim-v0_1_1".ref   = "master";
  inputs."rnim-v0_1_1".repo  = "rnim";
  inputs."rnim-v0_1_1".type  = "github";
  inputs."rnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_2".dir   = "v0_1_2";
  inputs."rnim-v0_1_2".owner = "nim-nix-pkgs";
  inputs."rnim-v0_1_2".ref   = "master";
  inputs."rnim-v0_1_2".repo  = "rnim";
  inputs."rnim-v0_1_2".type  = "github";
  inputs."rnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_3".dir   = "v0_1_3";
  inputs."rnim-v0_1_3".owner = "nim-nix-pkgs";
  inputs."rnim-v0_1_3".ref   = "master";
  inputs."rnim-v0_1_3".repo  = "rnim";
  inputs."rnim-v0_1_3".type  = "github";
  inputs."rnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_4".dir   = "v0_1_4";
  inputs."rnim-v0_1_4".owner = "nim-nix-pkgs";
  inputs."rnim-v0_1_4".ref   = "master";
  inputs."rnim-v0_1_4".repo  = "rnim";
  inputs."rnim-v0_1_4".type  = "github";
  inputs."rnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_5".dir   = "v0_1_5";
  inputs."rnim-v0_1_5".owner = "nim-nix-pkgs";
  inputs."rnim-v0_1_5".ref   = "master";
  inputs."rnim-v0_1_5".repo  = "rnim";
  inputs."rnim-v0_1_5".type  = "github";
  inputs."rnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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