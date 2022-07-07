{
  description = ''Nitro state channels'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nitro-0_5_1.flake = false;
  inputs.src-nitro-0_5_1.ref   = "refs/tags/0.5.1";
  inputs.src-nitro-0_5_1.owner = "status-im";
  inputs.src-nitro-0_5_1.repo  = "nim-nitro";
  inputs.src-nitro-0_5_1.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable".owner = "nim-nix-pkgs";
  inputs."questionable".ref   = "master";
  inputs."questionable".repo  = "questionable";
  inputs."questionable".dir   = "0_10_4";
  inputs."questionable".type  = "github";
  inputs."questionable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."upraises".owner = "nim-nix-pkgs";
  inputs."upraises".ref   = "master";
  inputs."upraises".repo  = "upraises";
  inputs."upraises".dir   = "0_1_0";
  inputs."upraises".type  = "github";
  inputs."upraises".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi".owner = "nim-nix-pkgs";
  inputs."contractabi".ref   = "master";
  inputs."contractabi".repo  = "contractabi";
  inputs."contractabi".dir   = "0_4_5";
  inputs."contractabi".type  = "github";
  inputs."contractabi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".owner = "nim-nix-pkgs";
  inputs."secp256k1".ref   = "master";
  inputs."secp256k1".repo  = "secp256k1";
  inputs."secp256k1".dir   = "master";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nitro-0_5_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nitro-0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}