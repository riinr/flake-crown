{
  description = ''Convert json node to camelcase'';
  inputs.src-camelize-v0_1_0.flake = false;
  inputs.src-camelize-v0_1_0.type = "github";
  inputs.src-camelize-v0_1_0.owner = "kixixixixi";
  inputs.src-camelize-v0_1_0.repo = "camelize";
  inputs.src-camelize-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-camelize-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-camelize-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-camelize-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}