{
  description = ''ISO codes for Nim.'';
  inputs.src-isocodes-1_2_0.flake = false;
  inputs.src-isocodes-1_2_0.type = "github";
  inputs.src-isocodes-1_2_0.owner = "kraptor";
  inputs.src-isocodes-1_2_0.repo = "isocodes";
  inputs.src-isocodes-1_2_0.ref = "refs/tags/1.2.0";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-isocodes-1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isocodes-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}