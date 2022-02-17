{
  description = ''A vim-based editor'';
  inputs.src-pvim-0_10_0.flake = false;
  inputs.src-pvim-0_10_0.type = "github";
  inputs.src-pvim-0_10_0.owner = "paranim";
  inputs.src-pvim-0_10_0.repo = "pvim";
  inputs.src-pvim-0_10_0.ref = "refs/tags/0.10.0";
  
  
  inputs."paravim".type = "github";
  inputs."paravim".owner = "riinr";
  inputs."paravim".repo = "flake-nimble";
  inputs."paravim".ref = "flake-pinning";
  inputs."paravim".dir = "nimpkgs/p/paravim";

  outputs = { self, nixpkgs, src-pvim-0_10_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pvim-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}