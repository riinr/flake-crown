{
  description = ''Prints a dot graph of a nim ast dumped using the `dumpTree` macro.'';
  inputs.src-astdot-main.flake = false;
  inputs.src-astdot-main.type = "github";
  inputs.src-astdot-main.owner = "Rekihyt";
  inputs.src-astdot-main.repo = "astdot";
  inputs.src-astdot-main.ref = "refs/heads/main";
  
  
  inputs."strings".url = "path:../../../s/strings";
  inputs."strings".type = "github";
  inputs."strings".owner = "riinr";
  inputs."strings".repo = "flake-nimble";
  inputs."strings".ref = "flake-pinning";
  inputs."strings".dir = "nimpkgs/s/strings";

  
  inputs."clapfn".url = "path:../../../c/clapfn";
  inputs."clapfn".type = "github";
  inputs."clapfn".owner = "riinr";
  inputs."clapfn".repo = "flake-nimble";
  inputs."clapfn".ref = "flake-pinning";
  inputs."clapfn".dir = "nimpkgs/c/clapfn";

  
  inputs."nimgraphviz".url = "path:../../../n/nimgraphviz";
  inputs."nimgraphviz".type = "github";
  inputs."nimgraphviz".owner = "riinr";
  inputs."nimgraphviz".repo = "flake-nimble";
  inputs."nimgraphviz".ref = "flake-pinning";
  inputs."nimgraphviz".dir = "nimpkgs/n/nimgraphviz";

  outputs = { self, nixpkgs, src-astdot-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astdot-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-astdot-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}