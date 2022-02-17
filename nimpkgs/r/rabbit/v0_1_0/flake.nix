{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';
  inputs.src-rabbit-v0_1_0.flake = false;
  inputs.src-rabbit-v0_1_0.type = "github";
  inputs.src-rabbit-v0_1_0.owner = "tonogram";
  inputs.src-rabbit-v0_1_0.repo = "rabbit";
  inputs.src-rabbit-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  outputs = { self, nixpkgs, src-rabbit-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rabbit-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rabbit-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}