{
  description = ''An alternative DateTime implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."systimes-master".url = "path:./master";
  inputs."systimes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."systimes-v0_2_0".url = "path:./v0_2_0";
  inputs."systimes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."systimes-v0_2_1".url = "path:./v0_2_1";
  inputs."systimes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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