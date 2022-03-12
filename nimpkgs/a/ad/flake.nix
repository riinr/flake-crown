{
  description = ''A simple RPN calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ad-master".url = "path:./master";
  inputs."ad-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_6_3".url = "path:./0_6_3";
  inputs."ad-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_6_4".url = "path:./0_6_4";
  inputs."ad-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7".url = "path:./0_7";
  inputs."ad-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_1".url = "path:./0_7_1";
  inputs."ad-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_2".url = "path:./0_7_2";
  inputs."ad-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_4".url = "path:./0_7_4";
  inputs."ad-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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