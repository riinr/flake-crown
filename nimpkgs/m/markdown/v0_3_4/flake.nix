{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_3_4.flake = false;
  inputs.src-markdown-v0_3_4.type = "github";
  inputs.src-markdown-v0_3_4.owner = "soasme";
  inputs.src-markdown-v0_3_4.repo = "nim-markdown";
  inputs.src-markdown-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-markdown-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}