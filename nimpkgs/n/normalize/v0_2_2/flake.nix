{
  description = ''Unicode normalization forms (tr15)'';
  inputs.src-normalize-v0_2_2.flake = false;
  inputs.src-normalize-v0_2_2.type = "github";
  inputs.src-normalize-v0_2_2.owner = "nitely";
  inputs.src-normalize-v0_2_2.repo = "nim-normalize";
  inputs.src-normalize-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-normalize-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-normalize-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-normalize-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}