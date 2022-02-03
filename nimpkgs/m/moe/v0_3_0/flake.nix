{
  description = ''A command lined based text editor inspired by vi/vim'';
  inputs.src-moe-v0_3_0.flake = false;
  inputs.src-moe-v0_3_0.type = "github";
  inputs.src-moe-v0_3_0.owner = "fox0430";
  inputs.src-moe-v0_3_0.repo = "moe";
  inputs.src-moe-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."ncurses".url = "path:../../../n/ncurses";
  inputs."ncurses".type = "github";
  inputs."ncurses".owner = "riinr";
  inputs."ncurses".repo = "flake-nimble";
  inputs."ncurses".ref = "flake-pinning";
  inputs."ncurses".dir = "nimpkgs/n/ncurses";

  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-moe-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moe-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moe-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}