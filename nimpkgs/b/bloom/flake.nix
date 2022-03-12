{
  description = ''Efficient Bloom filter implementation in Nim using MurmurHash3.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bloom-master".url = "path:./master";
  inputs."bloom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bloom-v0_1_0".url = "path:./v0_1_0";
  inputs."bloom-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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