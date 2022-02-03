{
  description = ''GnuTLS wrapper'';
  inputs.src-gnutls-0_1_0.flake = false;
  inputs.src-gnutls-0_1_0.type = "github";
  inputs.src-gnutls-0_1_0.owner = "FedericoCeratto";
  inputs.src-gnutls-0_1_0.repo = "nim-gnutls";
  inputs.src-gnutls-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-gnutls-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnutls-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnutls-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}