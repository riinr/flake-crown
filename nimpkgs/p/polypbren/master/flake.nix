{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
  inputs.src-polypbren-master.flake = false;
  inputs.src-polypbren-master.type = "github";
  inputs.src-polypbren-master.owner = "guibar64";
  inputs.src-polypbren-master.repo = "polypbren";
  inputs.src-polypbren-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/yglukhov/threadpools".type = "github";
  inputs."https://github.com/yglukhov/threadpools".owner = "riinr";
  inputs."https://github.com/yglukhov/threadpools".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/threadpools".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/threadpools".dir = "nimpkgs/h/https://github.com/yglukhov/threadpools";

  outputs = { self, nixpkgs, src-polypbren-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polypbren-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polypbren-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}