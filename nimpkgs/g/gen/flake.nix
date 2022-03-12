{
  description = ''Boilerplate generator for Jester web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gen-master".url = "path:./master";
  inputs."gen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_2_0".url = "path:./0_2_0";
  inputs."gen-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_4_0".url = "path:./0_4_0";
  inputs."gen-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_6_0".url = "path:./0_6_0";
  inputs."gen-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_8_0".url = "path:./0_8_0";
  inputs."gen-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_0_0".url = "path:./1_0_0";
  inputs."gen-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_2_0".url = "path:./1_2_0";
  inputs."gen-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_4_0".url = "path:./1_4_0";
  inputs."gen-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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