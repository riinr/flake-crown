{
  description = ''fastText wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfasttext-master".url = "path:./master";
  inputs."nimfasttext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfasttext-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfasttext-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfasttext-v0_1_2".url = "path:./v0_1_2";
  inputs."nimfasttext-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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