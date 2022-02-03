{
  description = ''A wrapper for the libsecp256k1 C library'';
  inputs.src-secp256k1-master.flake = false;
  inputs.src-secp256k1-master.type = "github";
  inputs.src-secp256k1-master.owner = "status-im";
  inputs.src-secp256k1-master.repo = "nim-secp256k1";
  inputs.src-secp256k1-master.ref = "refs/heads/master";
  
  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-secp256k1-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-secp256k1-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-secp256k1-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}