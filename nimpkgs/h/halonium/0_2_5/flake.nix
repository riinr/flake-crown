{
  description = ''A browser automation library written in Nim'';
  inputs.src-halonium-0_2_5.flake = false;
  inputs.src-halonium-0_2_5.type = "github";
  inputs.src-halonium-0_2_5.owner = "halonium";
  inputs.src-halonium-0_2_5.repo = "halonium";
  inputs.src-halonium-0_2_5.ref = "refs/tags/0.2.5";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."uuids".url = "path:../../../u/uuids";
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."fusion".url = "path:../../../f/fusion";
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-halonium-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-halonium-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-halonium-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}