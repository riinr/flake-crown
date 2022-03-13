{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcrypt-v0_0_6.flake = false;
  inputs.src-nimcrypt-v0_0_6.owner = "napalu";
  inputs.src-nimcrypt-v0_0_6.ref   = "refs/tags/v0.0.6";
  inputs.src-nimcrypt-v0_0_6.repo  = "nimcrypt";
  inputs.src-nimcrypt-v0_0_6.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcrypt-v0_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcrypt-v0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}