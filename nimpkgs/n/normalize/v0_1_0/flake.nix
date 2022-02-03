{
  description = ''Unicode normalization forms (tr15)'';
  inputs.src-normalize-v0_1_0.flake = false;
  inputs.src-normalize-v0_1_0.type = "github";
  inputs.src-normalize-v0_1_0.owner = "nitely";
  inputs.src-normalize-v0_1_0.repo = "nim-normalize";
  inputs.src-normalize-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-normalize-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-normalize-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-normalize-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}