{
  description = ''A port of ggplot2 for Nim'';
  inputs.src-ggplotnim-v0_4_2.flake = false;
  inputs.src-ggplotnim-v0_4_2.type = "github";
  inputs.src-ggplotnim-v0_4_2.owner = "Vindaar";
  inputs.src-ggplotnim-v0_4_2.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
  inputs."https://github.com/vindaar/seqmath".url = "path:../../../h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."ginger".url = "path:../../../g/ginger";
  inputs."ginger".type = "github";
  inputs."ginger".owner = "riinr";
  inputs."ginger".repo = "flake-nimble";
  inputs."ginger".ref = "flake-pinning";
  inputs."ginger".dir = "nimpkgs/g/ginger";

  
  inputs."datamancer".url = "path:../../../d/datamancer";
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";

  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."webview".url = "path:../../../w/webview";
  inputs."webview".type = "github";
  inputs."webview".owner = "riinr";
  inputs."webview".repo = "flake-nimble";
  inputs."webview".ref = "flake-pinning";
  inputs."webview".dir = "nimpkgs/w/webview";

  outputs = { self, nixpkgs, src-ggplotnim-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ggplotnim-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}