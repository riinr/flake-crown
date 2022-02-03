{
  description = ''A wrapper for stb_image and stb_image_write.'';
  inputs.src-stb_image-2_2.flake = false;
  inputs.src-stb_image-2_2.type = "gitlab";
  inputs.src-stb_image-2_2.owner = "define-private-public";
  inputs.src-stb_image-2_2.repo = "stb_image-Nim";
  inputs.src-stb_image-2_2.ref = "refs/tags/2.2";
  
  outputs = { self, nixpkgs, src-stb_image-2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stb_image-2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}