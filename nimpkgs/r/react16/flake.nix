{
  description = ''React.js 16.x bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."react16-master".url = "path:./master";
  inputs."react16-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_1".url = "path:./0_3_1";
  inputs."react16-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_2".url = "path:./0_3_2";
  inputs."react16-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_3".url = "path:./0_3_3";
  inputs."react16-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_4".url = "path:./0_3_4";
  inputs."react16-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_5".url = "path:./0_3_5";
  inputs."react16-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_6".url = "path:./0_3_6";
  inputs."react16-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-v0_3_7".url = "path:./v0_3_7";
  inputs."react16-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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