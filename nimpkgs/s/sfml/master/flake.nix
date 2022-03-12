{
  description = ''High level OpenGL-based Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sfml-master.flake = false;
  inputs.src-sfml-master.owner = "fowlmouth";
  inputs.src-sfml-master.ref   = "refs/heads/master";
  inputs.src-sfml-master.repo  = "nimrod-sfml";
  inputs.src-sfml-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sfml-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sfml-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}