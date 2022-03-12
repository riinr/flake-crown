{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."procs-master".url = "path:./master";
  inputs."procs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."procs-v0_2_1".url = "path:./v0_2_1";
  inputs."procs-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."procs-v0_3_0".url = "path:./v0_3_0";
  inputs."procs-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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