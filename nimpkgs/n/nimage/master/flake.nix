{
  description = ''The image management library written in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimage-master.flake = false;
  inputs.src-nimage-master.ref   = "refs/heads/master";
  inputs.src-nimage-master.owner = "ethosa";
  inputs.src-nimage-master.repo  = "nimage";
  inputs.src-nimage-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimage-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimage-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}