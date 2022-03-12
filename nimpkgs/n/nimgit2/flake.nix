{
  description = ''libgit2 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgit2-master".url = "path:./master";
  inputs."nimgit2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_0".url = "path:./v0_1_0";
  inputs."nimgit2-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_1".url = "path:./v0_1_1";
  inputs."nimgit2-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_2".url = "path:./v0_1_2";
  inputs."nimgit2-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_2_0".url = "path:./v0_2_0";
  inputs."nimgit2-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_0".url = "path:./v0_3_0";
  inputs."nimgit2-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_1".url = "path:./v0_3_1";
  inputs."nimgit2-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_2".url = "path:./v0_3_2";
  inputs."nimgit2-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_4".url = "path:./v0_3_4";
  inputs."nimgit2-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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