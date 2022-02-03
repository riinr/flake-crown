{
  description = ''A library for colorizing paths according to LS_COLORS'';
  inputs.src-lscolors-master.flake = false;
  inputs.src-lscolors-master.type = "github";
  inputs.src-lscolors-master.owner = "joachimschmidt557";
  inputs.src-lscolors-master.repo = "nim-lscolors";
  inputs.src-lscolors-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lscolors-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lscolors-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lscolors-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}