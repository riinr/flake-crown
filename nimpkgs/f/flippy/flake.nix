{
  description = ''Flippy is a simple 2d image and drawing library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."flippy-master".url = "path:./master";
  inputs."flippy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_0".url = "path:./0_4_0";
  inputs."flippy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_1".url = "path:./0_4_1";
  inputs."flippy-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_2".url = "path:./0_4_2";
  inputs."flippy-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_3".url = "path:./0_4_3";
  inputs."flippy-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_4".url = "path:./0_4_4";
  inputs."flippy-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_5".url = "path:./0_4_5";
  inputs."flippy-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_6".url = "path:./0_4_6";
  inputs."flippy-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_7".url = "path:./0_4_7";
  inputs."flippy-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-v0_4_1".url = "path:./v0_4_1";
  inputs."flippy-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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