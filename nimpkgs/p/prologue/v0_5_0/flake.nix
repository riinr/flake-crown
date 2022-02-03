{
  description = ''Another micro web framework.'';
  inputs.src-prologue-v0_5_0.flake = false;
  inputs.src-prologue-v0_5_0.type = "github";
  inputs.src-prologue-v0_5_0.owner = "planety";
  inputs.src-prologue-v0_5_0.repo = "Prologue";
  inputs.src-prologue-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."cookiejar".url = "path:../../../c/cookiejar";
  inputs."cookiejar".type = "github";
  inputs."cookiejar".owner = "riinr";
  inputs."cookiejar".repo = "flake-nimble";
  inputs."cookiejar".ref = "flake-pinning";
  inputs."cookiejar".dir = "nimpkgs/c/cookiejar";

  
  inputs."httpx".url = "path:../../../h/httpx";
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  
  inputs."logue".url = "path:../../../l/logue";
  inputs."logue".type = "github";
  inputs."logue".owner = "riinr";
  inputs."logue".repo = "flake-nimble";
  inputs."logue".ref = "flake-pinning";
  inputs."logue".dir = "nimpkgs/l/logue";

  outputs = { self, nixpkgs, src-prologue-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prologue-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}