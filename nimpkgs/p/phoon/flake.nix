{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."phoon-master".dir   = "master";
  inputs."phoon-master".owner = "nim-nix-pkgs";
  inputs."phoon-master".ref   = "master";
  inputs."phoon-master".repo  = "phoon";
  inputs."phoon-master".type  = "github";
  inputs."phoon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-0_1_1".dir   = "0_1_1";
  inputs."phoon-0_1_1".owner = "nim-nix-pkgs";
  inputs."phoon-0_1_1".ref   = "master";
  inputs."phoon-0_1_1".repo  = "phoon";
  inputs."phoon-0_1_1".type  = "github";
  inputs."phoon-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-0_2_0".dir   = "0_2_0";
  inputs."phoon-0_2_0".owner = "nim-nix-pkgs";
  inputs."phoon-0_2_0".ref   = "master";
  inputs."phoon-0_2_0".repo  = "phoon";
  inputs."phoon-0_2_0".type  = "github";
  inputs."phoon-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-0_3_0".dir   = "0_3_0";
  inputs."phoon-0_3_0".owner = "nim-nix-pkgs";
  inputs."phoon-0_3_0".ref   = "master";
  inputs."phoon-0_3_0".repo  = "phoon";
  inputs."phoon-0_3_0".type  = "github";
  inputs."phoon-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-0_4_0".dir   = "0_4_0";
  inputs."phoon-0_4_0".owner = "nim-nix-pkgs";
  inputs."phoon-0_4_0".ref   = "master";
  inputs."phoon-0_4_0".repo  = "phoon";
  inputs."phoon-0_4_0".type  = "github";
  inputs."phoon-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-v0_1_0".dir   = "v0_1_0";
  inputs."phoon-v0_1_0".owner = "nim-nix-pkgs";
  inputs."phoon-v0_1_0".ref   = "master";
  inputs."phoon-v0_1_0".repo  = "phoon";
  inputs."phoon-v0_1_0".type  = "github";
  inputs."phoon-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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