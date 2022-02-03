{
  description = ''A simple TLDR pages client'';
  inputs.src-mt-0_1_0.flake = false;
  inputs.src-mt-0_1_0.type = "other";
  inputs.src-mt-0_1_0.owner = "eqf0";
  inputs.src-mt-0_1_0.repo = "mt";
  inputs.src-mt-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-mt-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mt-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mt-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}