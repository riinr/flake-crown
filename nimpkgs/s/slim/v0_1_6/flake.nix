{
  description = ''nim package manager'';
  inputs.src-slim-v0_1_6.flake = false;
  inputs.src-slim-v0_1_6.type = "github";
  inputs.src-slim-v0_1_6.owner = "bung87";
  inputs.src-slim-v0_1_6.repo = "slim";
  inputs.src-slim-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, src-slim-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slim-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slim-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}