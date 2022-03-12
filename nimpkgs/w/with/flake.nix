{
  description = ''Simple 'with' macro for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."with-master".url = "path:./master";
  inputs."with-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-0_4_0".url = "path:./0_4_0";
  inputs."with-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-v0_1_0".url = "path:./v0_1_0";
  inputs."with-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-v0_2_0".url = "path:./v0_2_0";
  inputs."with-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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