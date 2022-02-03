{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_2_6.flake = false;
  inputs.src-zippy-0_2_6.type = "github";
  inputs.src-zippy-0_2_6.owner = "guzba";
  inputs.src-zippy-0_2_6.repo = "zippy";
  inputs.src-zippy-0_2_6.ref = "refs/tags/0.2.6";
  
  outputs = { self, nixpkgs, src-zippy-0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}