{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';
  inputs.src-notcurses-v3_0_0.flake = false;
  inputs.src-notcurses-v3_0_0.type = "github";
  inputs.src-notcurses-v3_0_0.owner = "michaelsbradleyjr";
  inputs.src-notcurses-v3_0_0.repo = "nim-notcurses";
  inputs.src-notcurses-v3_0_0.ref = "refs/tags/v3.0.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-notcurses-v3_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notcurses-v3_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notcurses-v3_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}