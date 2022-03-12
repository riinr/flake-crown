{
  description = ''Memoize Nim functions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."memo-master".url = "path:./master";
  inputs."memo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_0".url = "path:./0_1_0";
  inputs."memo-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_1".url = "path:./0_1_1";
  inputs."memo-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_2".url = "path:./0_1_2";
  inputs."memo-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_3".url = "path:./0_1_3";
  inputs."memo-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_0".url = "path:./0_2_0";
  inputs."memo-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_1".url = "path:./0_2_1";
  inputs."memo-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_2".url = "path:./0_2_2";
  inputs."memo-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_3_0".url = "path:./0_3_0";
  inputs."memo-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_4_0".url = "path:./0_4_0";
  inputs."memo-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}