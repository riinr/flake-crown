{
  description = ''Hashing/Digest collection in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shimsham-master".url = "path:./master";
  inputs."shimsham-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_0_1".url = "path:./0_0_1";
  inputs."shimsham-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_2".url = "path:./0_3_2";
  inputs."shimsham-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_3".url = "path:./0_3_3";
  inputs."shimsham-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-0_3_4".url = "path:./0_3_4";
  inputs."shimsham-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_1_0-alpha".url = "path:./v0_1_0-alpha";
  inputs."shimsham-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_2_0-alpha".url = "path:./v0_2_0-alpha";
  inputs."shimsham-v0_2_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_2_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shimsham-v0_3_1-alpha".url = "path:./v0_3_1-alpha";
  inputs."shimsham-v0_3_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_3_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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