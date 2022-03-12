{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bluu-master".url = "path:./master";
  inputs."bluu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_1".url = "path:./0_0_1";
  inputs."bluu-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_2".url = "path:./0_0_2";
  inputs."bluu-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_3".url = "path:./0_0_3";
  inputs."bluu-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_4".url = "path:./0_0_4";
  inputs."bluu-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_5".url = "path:./0_0_5";
  inputs."bluu-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_6".url = "path:./0_0_6";
  inputs."bluu-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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