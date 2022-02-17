{
  description = ''7z extraction for Nim'';
  inputs.src-nim7z-v0_1_5.flake = false;
  inputs.src-nim7z-v0_1_5.type = "github";
  inputs.src-nim7z-v0_1_5.owner = "genotrance";
  inputs.src-nim7z-v0_1_5.repo = "nim7z";
  inputs.src-nim7z-v0_1_5.ref = "refs/tags/v0.1.5";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nim7z-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim7z-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim7z-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}