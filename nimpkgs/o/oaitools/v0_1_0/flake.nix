{
  description = ''A high-level OAI-PMH library.'';
  inputs.src-oaitools-v0_1_0.flake = false;
  inputs.src-oaitools-v0_1_0.type = "github";
  inputs.src-oaitools-v0_1_0.owner = "markpbaggett";
  inputs.src-oaitools-v0_1_0.repo = "oaitools.nim";
  inputs.src-oaitools-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."xmltools".url = "path:../../../x/xmltools";
  inputs."xmltools".type = "github";
  inputs."xmltools".owner = "riinr";
  inputs."xmltools".repo = "flake-nimble";
  inputs."xmltools".ref = "flake-pinning";
  inputs."xmltools".dir = "nimpkgs/x/xmltools";

  outputs = { self, nixpkgs, src-oaitools-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oaitools-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oaitools-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}