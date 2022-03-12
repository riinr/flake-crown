{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpeg-master".url = "path:./master";
  inputs."mpeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpeg-v0_1_1".url = "path:./v0_1_1";
  inputs."mpeg-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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