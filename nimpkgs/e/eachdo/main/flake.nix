{
  description = ''eachdo executes commands with each multidimensional values'';
  inputs.src-eachdo-main.flake = false;
  inputs.src-eachdo-main.type = "github";
  inputs.src-eachdo-main.owner = "jiro4989";
  inputs.src-eachdo-main.repo = "eachdo";
  inputs.src-eachdo-main.ref = "refs/heads/main";
  
  
  inputs."argparse".url = "path:../../../a/argparse";
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, src-eachdo-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eachdo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eachdo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}