{
  description = ''Nim Game Library'';
  inputs.src-nimgl-1_1_4.flake = false;
  inputs.src-nimgl-1_1_4.type = "github";
  inputs.src-nimgl-1_1_4.owner = "nimgl";
  inputs.src-nimgl-1_1_4.repo = "nimgl";
  inputs.src-nimgl-1_1_4.ref = "refs/tags/1.1.4";
  
  outputs = { self, nixpkgs, src-nimgl-1_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}