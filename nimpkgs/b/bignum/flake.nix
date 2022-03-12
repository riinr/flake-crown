{
  description = ''Wrapper around the GMP bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bignum-master".url = "path:./master";
  inputs."bignum-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_2".url = "path:./1_0_2";
  inputs."bignum-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_3".url = "path:./1_0_3";
  inputs."bignum-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_4".url = "path:./1_0_4";
  inputs."bignum-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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