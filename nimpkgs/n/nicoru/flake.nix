{
  description = ''A container runtime written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nicoru-develop".url = "path:./develop";
  inputs."nicoru-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicoru-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicoru-main".url = "path:./main";
  inputs."nicoru-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicoru-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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