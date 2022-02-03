{
  description = ''Read and parse Excel files'';
  inputs.src-xlsx-v0_1_0.flake = false;
  inputs.src-xlsx-v0_1_0.type = "github";
  inputs.src-xlsx-v0_1_0.owner = "xflywind";
  inputs.src-xlsx-v0_1_0.repo = "xlsx";
  inputs.src-xlsx-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-xlsx-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsx-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}