{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_9.flake = false;
  inputs.src-gintro-v0_4_9.type = "github";
  inputs.src-gintro-v0_4_9.owner = "stefansalewski";
  inputs.src-gintro-v0_4_9.repo = "gintro";
  inputs.src-gintro-v0_4_9.ref = "refs/tags/v0.4.9";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}