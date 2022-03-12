{
  description = ''library for scraping google search results'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."googlesearch-master".url = "path:./master";
  inputs."googlesearch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_1_0".url = "path:./v0_1_0";
  inputs."googlesearch-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_1_1".url = "path:./v0_1_1";
  inputs."googlesearch-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_2_0".url = "path:./v0_2_0";
  inputs."googlesearch-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_3_0".url = "path:./v0_3_0";
  inputs."googlesearch-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_3_1".url = "path:./v0_3_1";
  inputs."googlesearch-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_4_0".url = "path:./v0_4_0";
  inputs."googlesearch-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_4_1".url = "path:./v0_4_1";
  inputs."googlesearch-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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