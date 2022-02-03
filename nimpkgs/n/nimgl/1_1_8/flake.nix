{
  description = ''Nim Game Library'';
  inputs.src-nimgl-1_1_8.flake = false;
  inputs.src-nimgl-1_1_8.type = "github";
  inputs.src-nimgl-1_1_8.owner = "nimgl";
  inputs.src-nimgl-1_1_8.repo = "nimgl";
  inputs.src-nimgl-1_1_8.ref = "refs/tags/1.1.8";
  
  outputs = { self, nixpkgs, src-nimgl-1_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-1_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}