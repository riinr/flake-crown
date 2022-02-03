{
  description = ''Nim Game Library'';
  inputs.src-nimgl-1_0_0.flake = false;
  inputs.src-nimgl-1_0_0.type = "github";
  inputs.src-nimgl-1_0_0.owner = "nimgl";
  inputs.src-nimgl-1_0_0.repo = "nimgl";
  inputs.src-nimgl-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-nimgl-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}