{
  description = ''A bunch of macros. sugar if you would'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimspice-master.flake = false;
  inputs.src-nimspice-master.owner = "CodeDoes";
  inputs.src-nimspice-master.ref   = "refs/heads/master";
  inputs.src-nimspice-master.repo  = "nimspice";
  inputs.src-nimspice-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimspice-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimspice-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}