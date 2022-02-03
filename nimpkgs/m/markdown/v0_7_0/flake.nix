{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_7_0.flake = false;
  inputs.src-markdown-v0_7_0.type = "github";
  inputs.src-markdown-v0_7_0.owner = "soasme";
  inputs.src-markdown-v0_7_0.repo = "nim-markdown";
  inputs.src-markdown-v0_7_0.ref = "refs/tags/v0.7.0";
  
  outputs = { self, nixpkgs, src-markdown-v0_7_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}