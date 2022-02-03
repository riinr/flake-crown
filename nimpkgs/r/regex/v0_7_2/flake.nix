{
  description = ''Linear time regex matching'';
  inputs.src-regex-v0_7_2.flake = false;
  inputs.src-regex-v0_7_2.type = "github";
  inputs.src-regex-v0_7_2.owner = "nitely";
  inputs.src-regex-v0_7_2.repo = "nim-regex";
  inputs.src-regex-v0_7_2.ref = "refs/tags/v0.7.2";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."unicodeplus".url = "path:../../../u/unicodeplus";
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";

  outputs = { self, nixpkgs, src-regex-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-regex-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}