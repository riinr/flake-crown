{
  description = ''nim package manager'';
  inputs.src-slim-v0_1_2.flake = false;
  inputs.src-slim-v0_1_2.type = "github";
  inputs.src-slim-v0_1_2.owner = "bung87";
  inputs.src-slim-v0_1_2.repo = "slim";
  inputs.src-slim-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-slim-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slim-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slim-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}