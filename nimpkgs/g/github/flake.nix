{
  description = ''github api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-master".url = "path:./master";
  inputs."github-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_0".url = "path:./1_0_0";
  inputs."github-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_1".url = "path:./1_0_1";
  inputs."github-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_2".url = "path:./1_0_2";
  inputs."github-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_3".url = "path:./1_0_3";
  inputs."github-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_4".url = "path:./1_0_4";
  inputs."github-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_0".url = "path:./2_0_0";
  inputs."github-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_1".url = "path:./2_0_1";
  inputs."github-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_2".url = "path:./2_0_2";
  inputs."github-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_3".url = "path:./2_0_3";
  inputs."github-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_4".url = "path:./2_0_4";
  inputs."github-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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