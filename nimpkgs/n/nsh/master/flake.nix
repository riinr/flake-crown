{
  description = ''nsh: Nim SHell(cross platform)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nsh-master.flake = false;
  inputs.src-nsh-master.ref   = "refs/heads/master";
  inputs.src-nsh-master.owner = "gmshiba";
  inputs.src-nsh-master.repo  = "nish";
  inputs.src-nsh-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nsh-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nsh-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}