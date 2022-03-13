{
  description = ''Wrapper around the GMP bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bignum-master".dir   = "master";
  inputs."bignum-master".owner = "nim-nix-pkgs";
  inputs."bignum-master".ref   = "master";
  inputs."bignum-master".repo  = "bignum";
  inputs."bignum-master".type  = "github";
  inputs."bignum-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_2".dir   = "1_0_2";
  inputs."bignum-1_0_2".owner = "nim-nix-pkgs";
  inputs."bignum-1_0_2".ref   = "master";
  inputs."bignum-1_0_2".repo  = "bignum";
  inputs."bignum-1_0_2".type  = "github";
  inputs."bignum-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_3".dir   = "1_0_3";
  inputs."bignum-1_0_3".owner = "nim-nix-pkgs";
  inputs."bignum-1_0_3".ref   = "master";
  inputs."bignum-1_0_3".repo  = "bignum";
  inputs."bignum-1_0_3".type  = "github";
  inputs."bignum-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bignum-1_0_4".dir   = "1_0_4";
  inputs."bignum-1_0_4".owner = "nim-nix-pkgs";
  inputs."bignum-1_0_4".ref   = "master";
  inputs."bignum-1_0_4".repo  = "bignum";
  inputs."bignum-1_0_4".type  = "github";
  inputs."bignum-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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