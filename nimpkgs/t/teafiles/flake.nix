{
  description = ''TeaFiles provide fast read/write access to time series data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."teafiles-master".url = "path:./master";
  inputs."teafiles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."teafiles-0_1_1".url = "path:./0_1_1";
  inputs."teafiles-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."teafiles-0_1_2".url = "path:./0_1_2";
  inputs."teafiles-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."teafiles-0_1_3".url = "path:./0_1_3";
  inputs."teafiles-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."teafiles-0_1_4".url = "path:./0_1_4";
  inputs."teafiles-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."teafiles-0_1_5".url = "path:./0_1_5";
  inputs."teafiles-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."teafiles-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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