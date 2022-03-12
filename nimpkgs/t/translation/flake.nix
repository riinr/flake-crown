{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."translation-master".url = "path:./master";
  inputs."translation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-0_2_0".url = "path:./0_2_0";
  inputs."translation-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-0_3_1".url = "path:./0_3_1";
  inputs."translation-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."translation-v0_1_0".url = "path:./v0_1_0";
  inputs."translation-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."translation-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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