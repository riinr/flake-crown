{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
  inputs.src-csfml-v2_1_2.flake = false;
  inputs.src-csfml-v2_1_2.type = "github";
  inputs.src-csfml-v2_1_2.owner = "oprypin";
  inputs.src-csfml-v2_1_2.repo = "nim-csfml";
  inputs.src-csfml-v2_1_2.ref = "refs/tags/v2.1.2";
  
  outputs = { self, nixpkgs, src-csfml-v2_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csfml-v2_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csfml-v2_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}