{
  description = ''7z extraction for Nim'';
  inputs.src-nim7z-v0_1_4.flake = false;
  inputs.src-nim7z-v0_1_4.type = "github";
  inputs.src-nim7z-v0_1_4.owner = "genotrance";
  inputs.src-nim7z-v0_1_4.repo = "nim7z";
  inputs.src-nim7z-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nim7z-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim7z-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim7z-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}