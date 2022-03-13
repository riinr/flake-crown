{
  description = ''A postgres DB adapter for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pdba-master".dir   = "master";
  inputs."pdba-master".owner = "nim-nix-pkgs";
  inputs."pdba-master".ref   = "master";
  inputs."pdba-master".repo  = "pdba";
  inputs."pdba-master".type  = "github";
  inputs."pdba-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_0".dir   = "v0_2_0";
  inputs."pdba-v0_2_0".owner = "nim-nix-pkgs";
  inputs."pdba-v0_2_0".ref   = "master";
  inputs."pdba-v0_2_0".repo  = "pdba";
  inputs."pdba-v0_2_0".type  = "github";
  inputs."pdba-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_1".dir   = "v0_2_1";
  inputs."pdba-v0_2_1".owner = "nim-nix-pkgs";
  inputs."pdba-v0_2_1".ref   = "master";
  inputs."pdba-v0_2_1".repo  = "pdba";
  inputs."pdba-v0_2_1".type  = "github";
  inputs."pdba-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_2".dir   = "v0_2_2";
  inputs."pdba-v0_2_2".owner = "nim-nix-pkgs";
  inputs."pdba-v0_2_2".ref   = "master";
  inputs."pdba-v0_2_2".repo  = "pdba";
  inputs."pdba-v0_2_2".type  = "github";
  inputs."pdba-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_3".dir   = "v0_2_3";
  inputs."pdba-v0_2_3".owner = "nim-nix-pkgs";
  inputs."pdba-v0_2_3".ref   = "master";
  inputs."pdba-v0_2_3".repo  = "pdba";
  inputs."pdba-v0_2_3".type  = "github";
  inputs."pdba-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pdba-v0_2_4".dir   = "v0_2_4";
  inputs."pdba-v0_2_4".owner = "nim-nix-pkgs";
  inputs."pdba-v0_2_4".ref   = "master";
  inputs."pdba-v0_2_4".repo  = "pdba";
  inputs."pdba-v0_2_4".type  = "github";
  inputs."pdba-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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