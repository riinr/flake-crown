{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_8_1.flake = false;
  inputs.src-markdown-v0_8_1.type = "github";
  inputs.src-markdown-v0_8_1.owner = "soasme";
  inputs.src-markdown-v0_8_1.repo = "nim-markdown";
  inputs.src-markdown-v0_8_1.ref = "refs/tags/v0.8.1";
  
  outputs = { self, nixpkgs, src-markdown-v0_8_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}