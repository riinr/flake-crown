{
  description = ''Read and parse Excel files'';
  inputs.src-xlsx-v0_4_4.flake = false;
  inputs.src-xlsx-v0_4_4.type = "github";
  inputs.src-xlsx-v0_4_4.owner = "xflywind";
  inputs.src-xlsx-v0_4_4.repo = "xlsx";
  inputs.src-xlsx-v0_4_4.ref = "refs/tags/v0.4.4";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-xlsx-v0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsx-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}