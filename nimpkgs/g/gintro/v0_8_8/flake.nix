{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_8_8.flake = false;
  inputs.src-gintro-v0_8_8.type = "github";
  inputs.src-gintro-v0_8_8.owner = "stefansalewski";
  inputs.src-gintro-v0_8_8.repo = "gintro";
  inputs.src-gintro-v0_8_8.ref = "refs/tags/v0.8.8";
  
  outputs = { self, nixpkgs, src-gintro-v0_8_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_8_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_8_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}