{
  description = ''A RPC framework for building web APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nerve-master".url = "path:./master";
  inputs."nerve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_1_0".url = "path:./0_1_0";
  inputs."nerve-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_1_1".url = "path:./0_1_1";
  inputs."nerve-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_2_0".url = "path:./0_2_0";
  inputs."nerve-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nerve-0_3_0".url = "path:./0_3_0";
  inputs."nerve-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nerve-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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