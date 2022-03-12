{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mathexpr-master".url = "path:./master";
  inputs."mathexpr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_2_0".url = "path:./1_2_0";
  inputs."mathexpr-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_0".url = "path:./1_3_0";
  inputs."mathexpr-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_1".url = "path:./1_3_1";
  inputs."mathexpr-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mathexpr-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mathexpr-1_3_2".url = "path:./1_3_2";
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