{
  description = ''github-release package'';
  inputs.src-github_release-master.flake = false;
  inputs.src-github_release-master.type = "github";
  inputs.src-github_release-master.owner = "kdheepak";
  inputs.src-github_release-master.repo = "github-release";
  inputs.src-github_release-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-github_release-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_release-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github_release-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}