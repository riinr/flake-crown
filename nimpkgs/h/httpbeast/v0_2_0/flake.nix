{
  description = ''A performant and scalable HTTP server.'';
  inputs.src-httpbeast-v0_2_0.flake = false;
  inputs.src-httpbeast-v0_2_0.type = "github";
  inputs.src-httpbeast-v0_2_0.owner = "dom96";
  inputs.src-httpbeast-v0_2_0.repo = "httpbeast";
  inputs.src-httpbeast-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."asynctools".url = "path:../../../a/asynctools";
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";

  outputs = { self, nixpkgs, src-httpbeast-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpbeast-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}