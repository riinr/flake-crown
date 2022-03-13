{
  description = ''HTTP Authentication and Authorization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpauth-master".dir   = "master";
  inputs."httpauth-master".owner = "nim-nix-pkgs";
  inputs."httpauth-master".ref   = "master";
  inputs."httpauth-master".repo  = "httpauth";
  inputs."httpauth-master".type  = "github";
  inputs."httpauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_0".dir   = "0_1_0";
  inputs."httpauth-0_1_0".owner = "nim-nix-pkgs";
  inputs."httpauth-0_1_0".ref   = "master";
  inputs."httpauth-0_1_0".repo  = "httpauth";
  inputs."httpauth-0_1_0".type  = "github";
  inputs."httpauth-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_2".dir   = "0_1_2";
  inputs."httpauth-0_1_2".owner = "nim-nix-pkgs";
  inputs."httpauth-0_1_2".ref   = "master";
  inputs."httpauth-0_1_2".repo  = "httpauth";
  inputs."httpauth-0_1_2".type  = "github";
  inputs."httpauth-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_3".dir   = "0_1_3";
  inputs."httpauth-0_1_3".owner = "nim-nix-pkgs";
  inputs."httpauth-0_1_3".ref   = "master";
  inputs."httpauth-0_1_3".repo  = "httpauth";
  inputs."httpauth-0_1_3".type  = "github";
  inputs."httpauth-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_2_0".dir   = "0_2_0";
  inputs."httpauth-0_2_0".owner = "nim-nix-pkgs";
  inputs."httpauth-0_2_0".ref   = "master";
  inputs."httpauth-0_2_0".repo  = "httpauth";
  inputs."httpauth-0_2_0".type  = "github";
  inputs."httpauth-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_3_0".dir   = "0_3_0";
  inputs."httpauth-0_3_0".owner = "nim-nix-pkgs";
  inputs."httpauth-0_3_0".ref   = "master";
  inputs."httpauth-0_3_0".repo  = "httpauth";
  inputs."httpauth-0_3_0".type  = "github";
  inputs."httpauth-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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