{
  description = ''Simple OT wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simpleot-master".url = "path:./master";
  inputs."simpleot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-0_4_1".url = "path:./0_4_1";
  inputs."simpleot-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_4_2".url = "path:./v0_4_2";
  inputs."simpleot-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_5_0".url = "path:./v0_5_0";
  inputs."simpleot-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_5_1".url = "path:./v0_5_1";
  inputs."simpleot-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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