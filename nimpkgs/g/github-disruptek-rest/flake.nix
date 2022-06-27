{
  description = ''rest comfort'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rest-master".dir   = "master";
  inputs."rest-master".owner = "nim-nix-pkgs";
  inputs."rest-master".ref   = "master";
  inputs."rest-master".repo  = "rest";
  inputs."rest-master".type  = "github";
  inputs."rest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rest-1_0_0".dir   = "1_0_0";
  inputs."rest-1_0_0".owner = "nim-nix-pkgs";
  inputs."rest-1_0_0".ref   = "master";
  inputs."rest-1_0_0".repo  = "rest";
  inputs."rest-1_0_0".type  = "github";
  inputs."rest-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rest-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rest-1_0_3".dir   = "1_0_3";
  inputs."rest-1_0_3".owner = "nim-nix-pkgs";
  inputs."rest-1_0_3".ref   = "master";
  inputs."rest-1_0_3".repo  = "rest";
  inputs."rest-1_0_3".type  = "github";
  inputs."rest-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rest-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rest-1_0_4".dir   = "1_0_4";
  inputs."rest-1_0_4".owner = "nim-nix-pkgs";
  inputs."rest-1_0_4".ref   = "master";
  inputs."rest-1_0_4".repo  = "rest";
  inputs."rest-1_0_4".type  = "github";
  inputs."rest-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rest-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rest-1_0_5".dir   = "1_0_5";
  inputs."rest-1_0_5".owner = "nim-nix-pkgs";
  inputs."rest-1_0_5".ref   = "master";
  inputs."rest-1_0_5".repo  = "rest";
  inputs."rest-1_0_5".type  = "github";
  inputs."rest-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rest-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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