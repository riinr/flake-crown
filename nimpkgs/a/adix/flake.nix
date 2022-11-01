{
  description = ''An Adaptive Index Library For Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."adix-master".dir   = "master";
  inputs."adix-master".owner = "nim-nix-pkgs";
  inputs."adix-master".ref   = "master";
  inputs."adix-master".repo  = "adix";
  inputs."adix-master".type  = "github";
  inputs."adix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-0_2_0".dir   = "0_2_0";
  inputs."adix-0_2_0".owner = "nim-nix-pkgs";
  inputs."adix-0_2_0".ref   = "master";
  inputs."adix-0_2_0".repo  = "adix";
  inputs."adix-0_2_0".type  = "github";
  inputs."adix-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-0_2_1".dir   = "0_2_1";
  inputs."adix-0_2_1".owner = "nim-nix-pkgs";
  inputs."adix-0_2_1".ref   = "master";
  inputs."adix-0_2_1".repo  = "adix";
  inputs."adix-0_2_1".type  = "github";
  inputs."adix-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-0_4_0".dir   = "0_4_0";
  inputs."adix-0_4_0".owner = "nim-nix-pkgs";
  inputs."adix-0_4_0".ref   = "master";
  inputs."adix-0_4_0".repo  = "adix";
  inputs."adix-0_4_0".type  = "github";
  inputs."adix-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-v0_3_0".dir   = "v0_3_0";
  inputs."adix-v0_3_0".owner = "nim-nix-pkgs";
  inputs."adix-v0_3_0".ref   = "master";
  inputs."adix-v0_3_0".repo  = "adix";
  inputs."adix-v0_3_0".type  = "github";
  inputs."adix-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-v0_4_1".dir   = "v0_4_1";
  inputs."adix-v0_4_1".owner = "nim-nix-pkgs";
  inputs."adix-v0_4_1".ref   = "master";
  inputs."adix-v0_4_1".repo  = "adix";
  inputs."adix-v0_4_1".type  = "github";
  inputs."adix-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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