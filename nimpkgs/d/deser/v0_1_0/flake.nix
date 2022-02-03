{
  description = ''De/serialization library for Nim '';
  inputs.src-deser-v0_1_0.flake = false;
  inputs.src-deser-v0_1_0.type = "github";
  inputs.src-deser-v0_1_0.owner = "gabbhack";
  inputs.src-deser-v0_1_0.repo = "deser";
  inputs.src-deser-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/gabbhack/anycase-fork".url = "path:../../../h/https://github.com/gabbhack/anycase-fork";
  inputs."https://github.com/gabbhack/anycase-fork".type = "github";
  inputs."https://github.com/gabbhack/anycase-fork".owner = "riinr";
  inputs."https://github.com/gabbhack/anycase-fork".repo = "flake-nimble";
  inputs."https://github.com/gabbhack/anycase-fork".ref = "flake-pinning";
  inputs."https://github.com/gabbhack/anycase-fork".dir = "nimpkgs/h/https://github.com/gabbhack/anycase-fork";

  outputs = { self, nixpkgs, src-deser-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deser-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}