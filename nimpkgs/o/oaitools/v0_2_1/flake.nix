{
  description = ''A high-level OAI-PMH library.'';
  inputs.src-oaitools-v0_2_1.flake = false;
  inputs.src-oaitools-v0_2_1.type = "github";
  inputs.src-oaitools-v0_2_1.owner = "markpbaggett";
  inputs.src-oaitools-v0_2_1.repo = "oaitools.nim";
  inputs.src-oaitools-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."xmltools".type = "github";
  inputs."xmltools".owner = "riinr";
  inputs."xmltools".repo = "flake-nimble";
  inputs."xmltools".ref = "flake-pinning";
  inputs."xmltools".dir = "nimpkgs/x/xmltools";

  outputs = { self, nixpkgs, src-oaitools-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oaitools-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oaitools-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}