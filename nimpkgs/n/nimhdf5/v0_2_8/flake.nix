{
  description = ''Bindings for the HDF5 data format C library'';
  inputs.src-nimhdf5-v0_2_8.flake = false;
  inputs.src-nimhdf5-v0_2_8.type = "github";
  inputs.src-nimhdf5-v0_2_8.owner = "Vindaar";
  inputs.src-nimhdf5-v0_2_8.repo = "nimhdf5";
  inputs.src-nimhdf5-v0_2_8.ref = "refs/tags/v0.2.8";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-nimhdf5-v0_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhdf5-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimhdf5-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}