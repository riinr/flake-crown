{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mathexpr-master".dir   = "master";
  inputs."mathexpr-master".owner = "nim-nix-pkgs";
  inputs."mathexpr-master".ref   = "master";
  inputs."mathexpr-master".repo  = "mathexpr";
  inputs."mathexpr-master".type  = "github";
  inputs."mathexpr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_2_0".dir   = "1_2_0";
  inputs."mathexpr-1_2_0".owner = "nim-nix-pkgs";
  inputs."mathexpr-1_2_0".ref   = "master";
  inputs."mathexpr-1_2_0".repo  = "mathexpr";
  inputs."mathexpr-1_2_0".type  = "github";
  inputs."mathexpr-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_0".dir   = "1_3_0";
  inputs."mathexpr-1_3_0".owner = "nim-nix-pkgs";
  inputs."mathexpr-1_3_0".ref   = "master";
  inputs."mathexpr-1_3_0".repo  = "mathexpr";
  inputs."mathexpr-1_3_0".type  = "github";
  inputs."mathexpr-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_1".dir   = "1_3_1";
  inputs."mathexpr-1_3_1".owner = "nim-nix-pkgs";
  inputs."mathexpr-1_3_1".ref   = "master";
  inputs."mathexpr-1_3_1".repo  = "mathexpr";
  inputs."mathexpr-1_3_1".type  = "github";
  inputs."mathexpr-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_2".dir   = "1_3_2";
  inputs."mathexpr-1_3_2".owner = "nim-nix-pkgs";
  inputs."mathexpr-1_3_2".ref   = "master";
  inputs."mathexpr-1_3_2".repo  = "mathexpr";
  inputs."mathexpr-1_3_2".type  = "github";
  inputs."mathexpr-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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