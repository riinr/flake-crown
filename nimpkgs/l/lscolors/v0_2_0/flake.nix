{
  description = ''A library for colorizing paths according to LS_COLORS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lscolors-v0_2_0.flake = false;
  inputs.src-lscolors-v0_2_0.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-lscolors-v0_2_0.repo  = "nim-lscolors";
  inputs.src-lscolors-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lscolors-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lscolors-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}