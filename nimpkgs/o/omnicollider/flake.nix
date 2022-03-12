{
  description = ''SuperCollider wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omnicollider-develop".url = "path:./develop";
  inputs."omnicollider-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-master".url = "path:./master";
  inputs."omnicollider-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_1_0".url = "path:./0_1_0";
  inputs."omnicollider-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_0".url = "path:./0_2_0";
  inputs."omnicollider-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_1".url = "path:./0_2_1";
  inputs."omnicollider-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_2".url = "path:./0_2_2";
  inputs."omnicollider-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_2_3".url = "path:./0_2_3";
  inputs."omnicollider-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnicollider-0_4_0".url = "path:./0_4_0";
  inputs."omnicollider-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnicollider-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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