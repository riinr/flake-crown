{
  description = ''Compile time localization for applications'';
  inputs.src-localize-0_2.flake = false;
  inputs.src-localize-0_2.type = "github";
  inputs.src-localize-0_2.owner = "levovix0";
  inputs.src-localize-0_2.repo = "localize";
  inputs.src-localize-0_2.ref = "refs/tags/0.2";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-localize-0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-localize-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-localize-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}