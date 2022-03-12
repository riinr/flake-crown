{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."c_alikes-master".url = "path:./master";
  inputs."c_alikes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c_alikes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c_alikes-v0_2_0".url = "path:./v0_2_0";
  inputs."c_alikes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c_alikes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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