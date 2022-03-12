{
  description = ''Simple and compact fuzzing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfuzz-master".url = "path:./master";
  inputs."nimfuzz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-1_2_0".url = "path:./1_2_0";
  inputs."nimfuzz-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_0_0".url = "path:./v1_0_0";
  inputs."nimfuzz-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_1_0".url = "path:./v1_1_0";
  inputs."nimfuzz-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_3_0".url = "path:./v1_3_0";
  inputs."nimfuzz-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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