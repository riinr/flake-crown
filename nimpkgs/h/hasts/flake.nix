{
  description = ''AST for various languages'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hasts-master".url = "path:./master";
  inputs."hasts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_1".url = "path:./v0_1_1";
  inputs."hasts-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_2".url = "path:./v0_1_2";
  inputs."hasts-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_3".url = "path:./v0_1_3";
  inputs."hasts-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_4".url = "path:./v0_1_4";
  inputs."hasts-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_5".url = "path:./v0_1_5";
  inputs."hasts-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_6".url = "path:./v0_1_6";
  inputs."hasts-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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