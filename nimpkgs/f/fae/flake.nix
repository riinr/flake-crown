{
  description = ''Find and Edit Utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fae-master".url = "path:./master";
  inputs."fae-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fae-v1_0_0".url = "path:./v1_0_0";
  inputs."fae-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fae-v1_1_0".url = "path:./v1_1_0";
  inputs."fae-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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