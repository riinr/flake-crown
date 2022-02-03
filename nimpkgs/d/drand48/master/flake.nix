{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
  inputs.src-drand48-master.flake = false;
  inputs.src-drand48-master.type = "github";
  inputs.src-drand48-master.owner = "JeffersonLab";
  inputs.src-drand48-master.repo = "drand48";
  inputs.src-drand48-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-drand48-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drand48-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drand48-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}