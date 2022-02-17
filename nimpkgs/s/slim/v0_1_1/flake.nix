{
  description = ''nim package manager'';
  inputs.src-slim-v0_1_1.flake = false;
  inputs.src-slim-v0_1_1.type = "github";
  inputs.src-slim-v0_1_1.owner = "bung87";
  inputs.src-slim-v0_1_1.repo = "slim";
  inputs.src-slim-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-slim-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slim-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slim-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}