{
  description = ''A blog post generator for people with priorities.'';
  inputs.src-jeknil-master.flake = false;
  inputs.src-jeknil-master.type = "github";
  inputs.src-jeknil-master.owner = "tonogram";
  inputs.src-jeknil-master.repo = "jeknil";
  inputs.src-jeknil-master.ref = "refs/heads/master";
  
  
  inputs."markdown".url = "path:../../../m/markdown";
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, src-jeknil-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jeknil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}