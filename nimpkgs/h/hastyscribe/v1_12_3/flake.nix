{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_12_3.flake = false;
  inputs.src-hastyscribe-v1_12_3.type = "github";
  inputs.src-hastyscribe-v1_12_3.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_3.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_3.ref = "refs/tags/v1.12.3";
  
  outputs = { self, nixpkgs, src-hastyscribe-v1_12_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_12_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}