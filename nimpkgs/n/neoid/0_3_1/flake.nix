{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
  inputs.src-neoid-0_3_1.flake = false;
  inputs.src-neoid-0_3_1.type = "github";
  inputs.src-neoid-0_3_1.owner = "theAkito";
  inputs.src-neoid-0_3_1.repo = "nim-neoid";
  inputs.src-neoid-0_3_1.ref = "refs/tags/0.3.1";
  
  
  inputs."random".url = "path:../../../r/random";
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  
  inputs."winim".url = "path:../../../w/winim";
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  outputs = { self, nixpkgs, src-neoid-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neoid-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neoid-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}