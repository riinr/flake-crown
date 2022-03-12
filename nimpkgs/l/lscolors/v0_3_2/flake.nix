{
  description = ''A library for colorizing paths according to LS_COLORS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lscolors-v0_3_2.flake = false;
  inputs.src-lscolors-v0_3_2.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_3_2.ref   = "refs/tags/v0.3.2";
  inputs.src-lscolors-v0_3_2.repo  = "nim-lscolors";
  inputs.src-lscolors-v0_3_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lscolors-v0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lscolors-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}