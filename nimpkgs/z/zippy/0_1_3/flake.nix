{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_1_3.flake = false;
  inputs.src-zippy-0_1_3.type = "github";
  inputs.src-zippy-0_1_3.owner = "guzba";
  inputs.src-zippy-0_1_3.repo = "zippy";
  inputs.src-zippy-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-zippy-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}