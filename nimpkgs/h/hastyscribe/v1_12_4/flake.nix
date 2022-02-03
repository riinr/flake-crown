{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_12_4.flake = false;
  inputs.src-hastyscribe-v1_12_4.type = "github";
  inputs.src-hastyscribe-v1_12_4.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_4.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_4.ref = "refs/tags/v1.12.4";
  
  outputs = { self, nixpkgs, src-hastyscribe-v1_12_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_12_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}