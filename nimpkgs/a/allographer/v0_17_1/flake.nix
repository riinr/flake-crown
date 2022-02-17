{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
  inputs.src-allographer-v0_17_1.flake = false;
  inputs.src-allographer-v0_17_1.type = "github";
  inputs.src-allographer-v0_17_1.owner = "itsumura-h";
  inputs.src-allographer-v0_17_1.repo = "nim-allographer";
  inputs.src-allographer-v0_17_1.ref = "refs/tags/v0.17.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-allographer-v0_17_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_17_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-allographer-v0_17_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}