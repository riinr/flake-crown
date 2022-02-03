{
  description = ''IPC interface to sway (or i3) compositors'';
  inputs.src-swayipc-2_0_1.flake = false;
  inputs.src-swayipc-2_0_1.type = "github";
  inputs.src-swayipc-2_0_1.owner = "disruptek";
  inputs.src-swayipc-2_0_1.repo = "swayipc";
  inputs.src-swayipc-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, src-swayipc-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-swayipc-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}