{
  description = ''High-level Wren wrapper'';
  inputs.src-euwren-0_3_0.flake = false;
  inputs.src-euwren-0_3_0.type = "github";
  inputs.src-euwren-0_3_0.owner = "liquid600pgm";
  inputs.src-euwren-0_3_0.repo = "euwren";
  inputs.src-euwren-0_3_0.ref = "refs/tags/0.3.0";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-euwren-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euwren-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}