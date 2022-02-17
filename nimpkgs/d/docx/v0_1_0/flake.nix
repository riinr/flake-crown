{
  description = ''A simple docx reader.'';
  inputs.src-docx-v0_1_0.flake = false;
  inputs.src-docx-v0_1_0.type = "github";
  inputs.src-docx-v0_1_0.owner = "xflywind";
  inputs.src-docx-v0_1_0.repo = "docx";
  inputs.src-docx-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-docx-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docx-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docx-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}