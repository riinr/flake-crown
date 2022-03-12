{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neoid-master".url = "path:./master";
  inputs."neoid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_0".url = "path:./0_3_0";
  inputs."neoid-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_1".url = "path:./0_3_1";
  inputs."neoid-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_2".url = "path:./0_3_2";
  inputs."neoid-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-v0_1_0".url = "path:./v0_1_0";
  inputs."neoid-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-v0_2_0".url = "path:./v0_2_0";
  inputs."neoid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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