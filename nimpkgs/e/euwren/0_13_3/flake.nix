{
  description = ''High-level Wren wrapper'';
  inputs.src-euwren-0_13_3.flake = false;
  inputs.src-euwren-0_13_3.type = "github";
  inputs.src-euwren-0_13_3.owner = "liquid600pgm";
  inputs.src-euwren-0_13_3.repo = "euwren";
  inputs.src-euwren-0_13_3.ref = "refs/tags/0.13.3";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-euwren-0_13_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-0_13_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euwren-0_13_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}