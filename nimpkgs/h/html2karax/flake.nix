{
  description = ''Converts html to karax.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."html2karax-master".url = "path:./master";
  inputs."html2karax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_0_0".url = "path:./v1_0_0";
  inputs."html2karax-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_0_1".url = "path:./v1_0_1";
  inputs."html2karax-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_0".url = "path:./v1_1_0";
  inputs."html2karax-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_1".url = "path:./v1_1_1";
  inputs."html2karax-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_2".url = "path:./v1_1_2";
  inputs."html2karax-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_1_3".url = "path:./v1_1_3";
  inputs."html2karax-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_2_0".url = "path:./v1_2_0";
  inputs."html2karax-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html2karax-v1_2_1".url = "path:./v1_2_1";
  inputs."html2karax-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html2karax-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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