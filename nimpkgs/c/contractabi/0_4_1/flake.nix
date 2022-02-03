{
  description = ''ABI Encoding for Ethereum contracts'';
  inputs.src-contractabi-0_4_1.flake = false;
  inputs.src-contractabi-0_4_1.type = "github";
  inputs.src-contractabi-0_4_1.owner = "status-im";
  inputs.src-contractabi-0_4_1.repo = "nim-contract-abi";
  inputs.src-contractabi-0_4_1.ref = "refs/tags/0.4.1";
  
  
  inputs."stint".url = "path:../../../s/stint";
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  
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

  
  inputs."questionable".url = "path:../../../q/questionable";
  inputs."questionable".type = "github";
  inputs."questionable".owner = "riinr";
  inputs."questionable".repo = "flake-nimble";
  inputs."questionable".ref = "flake-pinning";
  inputs."questionable".dir = "nimpkgs/q/questionable";

  
  inputs."upraises".url = "path:../../../u/upraises";
  inputs."upraises".type = "github";
  inputs."upraises".owner = "riinr";
  inputs."upraises".repo = "flake-nimble";
  inputs."upraises".ref = "flake-pinning";
  inputs."upraises".dir = "nimpkgs/u/upraises";

  outputs = { self, nixpkgs, src-contractabi-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contractabi-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-contractabi-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}