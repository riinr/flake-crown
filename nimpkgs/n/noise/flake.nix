{
  description = ''Nim implementation of linenoise command line editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."noise-master".url = "path:./master";
  inputs."noise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noise-v0_1_14".url = "path:./v0_1_14";
  inputs."noise-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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