{
  description = ''libgcrypt wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libgcrypt-master".dir   = "master";
  inputs."libgcrypt-master".owner = "nim-nix-pkgs";
  inputs."libgcrypt-master".ref   = "master";
  inputs."libgcrypt-master".repo  = "libgcrypt";
  inputs."libgcrypt-master".type  = "github";
  inputs."libgcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libgcrypt-0_0_1".dir   = "0_0_1";
  inputs."libgcrypt-0_0_1".owner = "nim-nix-pkgs";
  inputs."libgcrypt-0_0_1".ref   = "master";
  inputs."libgcrypt-0_0_1".repo  = "libgcrypt";
  inputs."libgcrypt-0_0_1".type  = "github";
  inputs."libgcrypt-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libgcrypt-0_1_1".dir   = "0_1_1";
  inputs."libgcrypt-0_1_1".owner = "nim-nix-pkgs";
  inputs."libgcrypt-0_1_1".ref   = "master";
  inputs."libgcrypt-0_1_1".repo  = "libgcrypt";
  inputs."libgcrypt-0_1_1".type  = "github";
  inputs."libgcrypt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgcrypt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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