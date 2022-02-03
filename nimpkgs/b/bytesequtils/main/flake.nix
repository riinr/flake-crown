{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
  inputs.src-bytesequtils-main.flake = false;
  inputs.src-bytesequtils-main.type = "github";
  inputs.src-bytesequtils-main.owner = "Clonkk";
  inputs.src-bytesequtils-main.repo = "bytesequtils";
  inputs.src-bytesequtils-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-bytesequtils-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bytesequtils-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}