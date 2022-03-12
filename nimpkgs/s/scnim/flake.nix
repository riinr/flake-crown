{
  description = ''Develop SuperCollider UGens in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scnim-master".url = "path:./master";
  inputs."scnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scnim-0_0_1".url = "path:./0_0_1";
  inputs."scnim-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scnim-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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