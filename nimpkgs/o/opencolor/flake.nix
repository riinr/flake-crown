{
  description = ''Nim bindings for Open color'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opencolor-v1_9_1".url = "path:./v1_9_1";
  inputs."opencolor-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencolor-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opencolor-v1_9_1_1".url = "path:./v1_9_1_1";
  inputs."opencolor-v1_9_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencolor-v1_9_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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