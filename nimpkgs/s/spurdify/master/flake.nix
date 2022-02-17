{
  description = ''Spurdification library and CLI'';
  inputs.src-spurdify-master.flake = false;
  inputs.src-spurdify-master.type = "github";
  inputs.src-spurdify-master.owner = "paradox460";
  inputs.src-spurdify-master.repo = "spurdify";
  inputs.src-spurdify-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-spurdify-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spurdify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}