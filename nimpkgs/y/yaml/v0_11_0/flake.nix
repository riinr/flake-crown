{
  description = ''YAML 1.2 implementation for Nim'';
  inputs.src-yaml-v0_11_0.flake = false;
  inputs.src-yaml-v0_11_0.type = "github";
  inputs.src-yaml-v0_11_0.owner = "flyx";
  inputs.src-yaml-v0_11_0.repo = "NimYAML";
  inputs.src-yaml-v0_11_0.ref = "refs/tags/v0.11.0";
  
  outputs = { self, nixpkgs, src-yaml-v0_11_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-v0_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-yaml-v0_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}