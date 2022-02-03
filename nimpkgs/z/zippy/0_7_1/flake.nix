{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_7_1.flake = false;
  inputs.src-zippy-0_7_1.type = "github";
  inputs.src-zippy-0_7_1.owner = "guzba";
  inputs.src-zippy-0_7_1.repo = "zippy";
  inputs.src-zippy-0_7_1.ref = "refs/tags/0.7.1";
  
  outputs = { self, nixpkgs, src-zippy-0_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}