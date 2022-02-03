{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
  inputs.src-fugitive-v0_1_1.flake = false;
  inputs.src-fugitive-v0_1_1.type = "github";
  inputs.src-fugitive-v0_1_1.owner = "citycide";
  inputs.src-fugitive-v0_1_1.repo = "fugitive";
  inputs.src-fugitive-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."colorize".url = "path:../../../c/colorize";
  inputs."colorize".type = "github";
  inputs."colorize".owner = "riinr";
  inputs."colorize".repo = "flake-nimble";
  inputs."colorize".ref = "flake-pinning";
  inputs."colorize".dir = "nimpkgs/c/colorize";

  outputs = { self, nixpkgs, src-fugitive-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fugitive-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}