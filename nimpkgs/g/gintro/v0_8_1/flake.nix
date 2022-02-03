{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_8_1.flake = false;
  inputs.src-gintro-v0_8_1.type = "github";
  inputs.src-gintro-v0_8_1.owner = "stefansalewski";
  inputs.src-gintro-v0_8_1.repo = "gintro";
  inputs.src-gintro-v0_8_1.ref = "refs/tags/v0.8.1";
  
  outputs = { self, nixpkgs, src-gintro-v0_8_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}