{
  description = ''OAuth library for nim'';
  inputs.src-oauth-v0_3.flake = false;
  inputs.src-oauth-v0_3.type = "github";
  inputs.src-oauth-v0_3.owner = "CORDEA";
  inputs.src-oauth-v0_3.repo = "oauth";
  inputs.src-oauth-v0_3.ref = "refs/tags/v0.3";
  
  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, src-oauth-v0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oauth-v0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oauth-v0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}