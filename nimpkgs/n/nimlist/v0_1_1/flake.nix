{
  description = ''View nim packages in your browser.'';
  inputs.src-nimlist-v0_1_1.flake = false;
  inputs.src-nimlist-v0_1_1.type = "github";
  inputs.src-nimlist-v0_1_1.owner = "flenniken";
  inputs.src-nimlist-v0_1_1.repo = "nimlist";
  inputs.src-nimlist-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-nimlist-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlist-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlist-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}