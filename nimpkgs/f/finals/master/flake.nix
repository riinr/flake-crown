{
  description = ''Transparently declare single-set attributes.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-finals-master.flake = false;
  inputs.src-finals-master.ref   = "refs/heads/master";
  inputs.src-finals-master.owner = "quelklef";
  inputs.src-finals-master.repo  = "nim-finals";
  inputs.src-finals-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-finals-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-finals-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}