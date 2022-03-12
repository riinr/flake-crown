{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimquery-master".url = "path:./master";
  inputs."nimquery-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_0".url = "path:./v1_0_0";
  inputs."nimquery-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_1".url = "path:./v1_0_1";
  inputs."nimquery-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_0_2".url = "path:./v1_0_2";
  inputs."nimquery-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_0".url = "path:./v1_1_0";
  inputs."nimquery-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_1".url = "path:./v1_1_1";
  inputs."nimquery-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_1_2".url = "path:./v1_1_2";
  inputs."nimquery-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_0".url = "path:./v1_2_0";
  inputs."nimquery-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_1".url = "path:./v1_2_1";
  inputs."nimquery-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_2".url = "path:./v1_2_2";
  inputs."nimquery-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery-v1_2_3".url = "path:./v1_2_3";
  inputs."nimquery-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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