{
  description = ''A bunch of macros. sugar if you would'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimspice-master".url = "path:./master";
  inputs."nimspice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimspice-v0_1_0".url = "path:./v0_1_0";
  inputs."nimspice-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimspice-v0_1_2".url = "path:./v0_1_2";
  inputs."nimspice-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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