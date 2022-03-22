{
  description = ''Bindings for Chipmunk2D 6.x physics library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chipmunk6-master.flake = false;
  inputs.src-chipmunk6-master.ref   = "refs/heads/master";
  inputs.src-chipmunk6-master.owner = "fowlmouth";
  inputs.src-chipmunk6-master.repo  = "nimrod-chipmunk";
  inputs.src-chipmunk6-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk6-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chipmunk6-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}