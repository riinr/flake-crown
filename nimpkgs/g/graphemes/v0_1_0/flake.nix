{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-v0_1_0.flake = false;
  inputs.src-graphemes-v0_1_0.type = "github";
  inputs.src-graphemes-v0_1_0.owner = "nitely";
  inputs.src-graphemes-v0_1_0.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-graphemes-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}