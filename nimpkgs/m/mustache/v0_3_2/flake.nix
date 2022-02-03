{
  description = ''Mustache in Nim'';
  inputs.src-mustache-v0_3_2.flake = false;
  inputs.src-mustache-v0_3_2.type = "github";
  inputs.src-mustache-v0_3_2.owner = "soasme";
  inputs.src-mustache-v0_3_2.repo = "nim-mustache";
  inputs.src-mustache-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-mustache-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mustache-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}