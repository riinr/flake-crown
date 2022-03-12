{
  description = ''Shaders in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsl-master".url = "path:./master";
  inputs."nimsl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_2".url = "path:./v0_2";
  inputs."nimsl-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_2_1".url = "path:./v0_2_1";
  inputs."nimsl-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3".url = "path:./v0_3";
  inputs."nimsl-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3_1".url = "path:./v0_3_1";
  inputs."nimsl-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3_2".url = "path:./v0_3_2";
  inputs."nimsl-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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