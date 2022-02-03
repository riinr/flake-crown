{
  description = ''A library for making MIDI music'';
  inputs.src-paramidi-0_2_0.flake = false;
  inputs.src-paramidi-0_2_0.type = "github";
  inputs.src-paramidi-0_2_0.owner = "paranim";
  inputs.src-paramidi-0_2_0.repo = "paramidi";
  inputs.src-paramidi-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-paramidi-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paramidi-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}