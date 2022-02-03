{
  description = ''xcb bindings'';
  inputs.src-xcb-v0_1_1.flake = false;
  inputs.src-xcb-v0_1_1.type = "github";
  inputs.src-xcb-v0_1_1.owner = "SolitudeSF";
  inputs.src-xcb-v0_1_1.repo = "xcb";
  inputs.src-xcb-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-xcb-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcb-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcb-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}