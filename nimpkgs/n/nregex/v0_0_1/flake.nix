{
  description = ''A DFA based regex engine'';
  inputs.src-nregex-v0_0_1.flake = false;
  inputs.src-nregex-v0_0_1.type = "github";
  inputs.src-nregex-v0_0_1.owner = "nitely";
  inputs.src-nregex-v0_0_1.repo = "nregex";
  inputs.src-nregex-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
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

  outputs = { self, nixpkgs, src-nregex-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nregex-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nregex-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}