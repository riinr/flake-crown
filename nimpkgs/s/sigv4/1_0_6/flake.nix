{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_0_6.flake = false;
  inputs.src-sigv4-1_0_6.type = "github";
  inputs.src-sigv4-1_0_6.owner = "disruptek";
  inputs.src-sigv4-1_0_6.repo = "sigv4";
  inputs.src-sigv4-1_0_6.ref = "refs/tags/1.0.6";
  
  
  inputs."https://github.com/disruptek/nimcrypto".url = "path:../../../h/https://github.com/disruptek/nimcrypto";
  inputs."https://github.com/disruptek/nimcrypto".type = "github";
  inputs."https://github.com/disruptek/nimcrypto".owner = "riinr";
  inputs."https://github.com/disruptek/nimcrypto".repo = "flake-nimble";
  inputs."https://github.com/disruptek/nimcrypto".ref = "flake-pinning";
  inputs."https://github.com/disruptek/nimcrypto".dir = "nimpkgs/h/https://github.com/disruptek/nimcrypto";

  outputs = { self, nixpkgs, src-sigv4-1_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}