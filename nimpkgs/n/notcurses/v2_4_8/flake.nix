{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-v2_4_8.flake = false;
  inputs.src-notcurses-v2_4_8.type = "github";
  inputs.src-notcurses-v2_4_8.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v2_4_8.repo = "nim-notcurses";
  inputs.src-notcurses-v2_4_8.ref = "refs/tags/v2.4.8";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-v2_4_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v2_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-v2_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}