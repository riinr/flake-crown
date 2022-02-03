{
  description = ''Text editor to speed up testing code snippets'';
  inputs.src-snip-v0_2_0.flake = false;
  inputs.src-snip-v0_2_0.type = "github";
  inputs.src-snip-v0_2_0.owner = "genotrance";
  inputs.src-snip-v0_2_0.repo = "snip";
  inputs.src-snip-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-snip-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snip-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}