{
  description = ''Command-line args parser based on Usage message'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."docopt-master".url = "path:./master";
  inputs."docopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_0".url = "path:./v0_6_0";
  inputs."docopt-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_1".url = "path:./v0_6_1";
  inputs."docopt-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_2".url = "path:./v0_6_2";
  inputs."docopt-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_3".url = "path:./v0_6_3";
  inputs."docopt-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_4".url = "path:./v0_6_4";
  inputs."docopt-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_5".url = "path:./v0_6_5";
  inputs."docopt-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_6".url = "path:./v0_6_6";
  inputs."docopt-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_7".url = "path:./v0_6_7";
  inputs."docopt-v0_6_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt-v0_6_8".url = "path:./v0_6_8";
  inputs."docopt-v0_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt-v0_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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