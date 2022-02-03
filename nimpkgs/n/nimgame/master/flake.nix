{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
  inputs.src-nimgame-master.flake = false;
  inputs.src-nimgame-master.type = "github";
  inputs.src-nimgame-master.owner = "Vladar4";
  inputs.src-nimgame-master.repo = "nimgame";
  inputs.src-nimgame-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimgame-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgame-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgame-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}