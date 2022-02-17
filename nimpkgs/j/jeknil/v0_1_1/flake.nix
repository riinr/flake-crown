{
  description = ''A blog post generator for people with priorities.'';
  inputs.src-jeknil-v0_1_1.flake = false;
  inputs.src-jeknil-v0_1_1.type = "github";
  inputs.src-jeknil-v0_1_1.owner = "tonogram";
  inputs.src-jeknil-v0_1_1.repo = "jeknil";
  inputs.src-jeknil-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, src-jeknil-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jeknil-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}