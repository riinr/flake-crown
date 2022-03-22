{
  description = ''A library for colorizing paths according to LS_COLORS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lscolors-master.flake = false;
  inputs.src-lscolors-master.ref   = "refs/heads/master";
  inputs.src-lscolors-master.owner = "joachimschmidt557";
  inputs.src-lscolors-master.repo  = "nim-lscolors";
  inputs.src-lscolors-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lscolors-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lscolors-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}