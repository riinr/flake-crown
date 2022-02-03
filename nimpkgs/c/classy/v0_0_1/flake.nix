{
  description = ''typeclasses for Nim'';
  inputs.src-classy-v0_0_1.flake = false;
  inputs.src-classy-v0_0_1.type = "github";
  inputs.src-classy-v0_0_1.owner = "nigredo-tori";
  inputs.src-classy-v0_0_1.repo = "classy";
  inputs.src-classy-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-classy-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classy-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}