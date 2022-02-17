{
  description = ''OpenSSL wrapper for Nim'';
  inputs.src-nimssl-v0_1_2.flake = false;
  inputs.src-nimssl-v0_1_2.type = "github";
  inputs.src-nimssl-v0_1_2.owner = "genotrance";
  inputs.src-nimssl-v0_1_2.repo = "nimssl";
  inputs.src-nimssl-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimssl-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimssl-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimssl-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}