{
  description = ''High level wrapper over OpenCL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcl-master".url = "path:./master";
  inputs."nimcl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_1".url = "path:./0_1_1";
  inputs."nimcl-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_2".url = "path:./0_1_2";
  inputs."nimcl-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_3".url = "path:./0_1_3";
  inputs."nimcl-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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