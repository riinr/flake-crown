{
  description = ''github api'';
  inputs.src-github-1_0_3.flake = false;
  inputs.src-github-1_0_3.type = "github";
  inputs.src-github-1_0_3.owner = "disruptek";
  inputs.src-github-1_0_3.repo = "github";
  inputs.src-github-1_0_3.ref = "refs/tags/1.0.3";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-github-1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}