{
  description = ''C macro for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimish-master.flake = false;
  inputs.src-nimish-master.owner = "xflywind";
  inputs.src-nimish-master.ref   = "master";
  inputs.src-nimish-master.repo  = "nimish";
  inputs.src-nimish-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimish-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimish-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}