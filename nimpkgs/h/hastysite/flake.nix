{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hastysite-master".url = "path:./master";
  inputs."hastysite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-0_1_0".url = "path:./0_1_0";
  inputs."hastysite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_0_0".url = "path:./v1_0_0";
  inputs."hastysite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_0_1".url = "path:./v1_0_1";
  inputs."hastysite-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_1_0".url = "path:./v1_1_0";
  inputs."hastysite-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_0".url = "path:./v1_2_0";
  inputs."hastysite-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_1".url = "path:./v1_2_1";
  inputs."hastysite-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_2".url = "path:./v1_2_2";
  inputs."hastysite-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_0".url = "path:./v1_3_0";
  inputs."hastysite-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_1".url = "path:./v1_3_1";
  inputs."hastysite-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_2".url = "path:./v1_3_2";
  inputs."hastysite-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_3".url = "path:./v1_3_3";
  inputs."hastysite-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_4".url = "path:./v1_3_4";
  inputs."hastysite-v1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_5".url = "path:./v1_3_5";
  inputs."hastysite-v1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_6".url = "path:./v1_3_6";
  inputs."hastysite-v1_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_7".url = "path:./v1_3_7";
  inputs."hastysite-v1_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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