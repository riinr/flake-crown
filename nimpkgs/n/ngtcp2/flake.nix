{
  description = ''Nim wrapper around the ngtcp2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ngtcp2-main".url = "path:./main";
  inputs."ngtcp2-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ngtcp2-0_32_0".url = "path:./0_32_0";
  inputs."ngtcp2-0_32_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngtcp2-0_32_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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