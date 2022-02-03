{
  description = ''Mustache in Nim'';
  inputs.src-mustache-v0_2_1.flake = false;
  inputs.src-mustache-v0_2_1.type = "github";
  inputs.src-mustache-v0_2_1.owner = "soasme";
  inputs.src-mustache-v0_2_1.repo = "nim-mustache";
  inputs.src-mustache-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-mustache-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mustache-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}