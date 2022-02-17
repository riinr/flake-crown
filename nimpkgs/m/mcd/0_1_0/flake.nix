{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
  inputs.src-mcd-0_1_0.flake = false;
  inputs.src-mcd-0_1_0.type = "gitlab";
  inputs.src-mcd-0_1_0.owner = "malicious-commit-detector";
  inputs.src-mcd-0_1_0.repo = "mcd";
  inputs.src-mcd-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."colorizeecho".type = "github";
  inputs."colorizeecho".owner = "riinr";
  inputs."colorizeecho".repo = "flake-nimble";
  inputs."colorizeecho".ref = "flake-pinning";
  inputs."colorizeecho".dir = "nimpkgs/c/colorizeecho";

  outputs = { self, nixpkgs, src-mcd-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcd-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcd-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}