{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcrypt-main".dir   = "main";
  inputs."nimcrypt-main".owner = "nim-nix-pkgs";
  inputs."nimcrypt-main".ref   = "master";
  inputs."nimcrypt-main".repo  = "nimcrypt";
  inputs."nimcrypt-main".type  = "github";
  inputs."nimcrypt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypt-v0_0_6".dir   = "v0_0_6";
  inputs."nimcrypt-v0_0_6".owner = "nim-nix-pkgs";
  inputs."nimcrypt-v0_0_6".ref   = "master";
  inputs."nimcrypt-v0_0_6".repo  = "nimcrypt";
  inputs."nimcrypt-v0_0_6".type  = "github";
  inputs."nimcrypt-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypt-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypt-v0_0_7".dir   = "v0_0_7";
  inputs."nimcrypt-v0_0_7".owner = "nim-nix-pkgs";
  inputs."nimcrypt-v0_0_7".ref   = "master";
  inputs."nimcrypt-v0_0_7".repo  = "nimcrypt";
  inputs."nimcrypt-v0_0_7".type  = "github";
  inputs."nimcrypt-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypt-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypt-v0_0_8".dir   = "v0_0_8";
  inputs."nimcrypt-v0_0_8".owner = "nim-nix-pkgs";
  inputs."nimcrypt-v0_0_8".ref   = "master";
  inputs."nimcrypt-v0_0_8".repo  = "nimcrypt";
  inputs."nimcrypt-v0_0_8".type  = "github";
  inputs."nimcrypt-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypt-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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