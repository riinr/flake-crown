{
  description = ''A wrapper to notification libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notify-master".url = "path:./master";
  inputs."notify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_0".url = "path:./0_1_0";
  inputs."notify-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_1".url = "path:./0_1_1";
  inputs."notify-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_2".url = "path:./0_1_2";
  inputs."notify-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_4".url = "path:./0_1_4";
  inputs."notify-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify-0_1_5".url = "path:./0_1_5";
  inputs."notify-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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